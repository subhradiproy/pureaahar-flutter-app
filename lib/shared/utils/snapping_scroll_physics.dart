import 'dart:math' as math;

import 'package:flutter/widgets.dart';

mixin _SnapScrollPhysics on ScrollPhysics {
  @override
  BaseSnapScrollPhysics applyTo(ScrollPhysics? ancestor);
}

abstract class SnapScrollPhysics extends ScrollPhysics with _SnapScrollPhysics {
  factory SnapScrollPhysics({
    ScrollPhysics? parent,
    List<Snap> snaps,
  }) = RawSnapScrollPhysics;

  factory SnapScrollPhysics.avoidBetween(
    double minExtent,
    double maxExtent, {
    double? delimiter,
    ScrollPhysics? parent,
  }) {
    return SnapScrollPhysics(
      parent: parent,
      snaps: <Snap>[
        Snap.avoidZone(minExtent, maxExtent, delimiter: delimiter),
      ],
    );
  }

  factory SnapScrollPhysics.builder(
    SnapBuilder builder, {
    ScrollPhysics? parent,
  }) = BuilderSnapScrollPhysics;
}

class RawSnapScrollPhysics extends BaseSnapScrollPhysics {
  const RawSnapScrollPhysics({super.parent, this.snaps = const <Snap>[]});

  @override
  final List<Snap> snaps;

  @override
  RawSnapScrollPhysics applyTo(ScrollPhysics? ancestor) {
    return RawSnapScrollPhysics(
      parent: buildParent(ancestor),
      snaps: snaps,
    );
  }
}

typedef SnapBuilder = List<Snap> Function();

class BuilderSnapScrollPhysics extends BaseSnapScrollPhysics {
  const BuilderSnapScrollPhysics(this.builder, {super.parent});

  final SnapBuilder builder;

  @override
  List<Snap> get snaps => builder();

  @override
  BuilderSnapScrollPhysics applyTo(ScrollPhysics? ancestor) {
    return BuilderSnapScrollPhysics(
      builder,
      parent: buildParent(ancestor),
    );
  }
}

abstract class BaseSnapScrollPhysics extends ScrollPhysics
    implements SnapScrollPhysics {
  const BaseSnapScrollPhysics({
    super.parent,
  });

  List<Snap> get snaps;

  double _getTargetPixels(
    ScrollMetrics position,
    double proposedEnd,
    Tolerance tolerance,
    double velocity,
  ) {
    final Snap? snap = getSnap(position, proposedEnd, tolerance, velocity);
    if (snap == null) return proposedEnd;

    return snap.targetPixelsFor(position, proposedEnd, tolerance, velocity);
  }

  @override
  Simulation? createBallisticSimulation(
    ScrollMetrics position,
    double velocity,
  ) {
    final Simulation? simulation =
        super.createBallisticSimulation(position, velocity);
    final double proposedPixels =
        simulation?.x(double.infinity) ?? position.pixels;
    final Tolerance tolerance = toleranceFor(position);
    final double target =
        _getTargetPixels(position, proposedPixels, tolerance, velocity);
    if ((target - proposedPixels).abs() > 1) {
      if (simulation is BouncingScrollSimulation) {
        return BouncingScrollSimulation(
          leadingExtent: math.min(target, position.pixels),
          trailingExtent: math.max(target, position.pixels),
          velocity: velocity,
          position: position.pixels,
          spring: spring,
          tolerance: tolerance,
        );
      }
      return ScrollSpringSimulation(
        spring,
        position.pixels,
        target,
        velocity,
        tolerance: tolerance,
      );
    }
    return simulation;
  }

  @override
  bool get allowImplicitScrolling => false;

  Snap? getSnap(
    ScrollMetrics position,
    double proposedEnd,
    Tolerance tolerance,
    double velocity,
  ) {
    for (final Snap snap in snaps) {
      if (snap.shouldApplyFor(position, proposedEnd)) return snap;
    }
    return null;
  }
}

abstract class Snap {
  factory Snap(
    double extent, {
    double? distance = 10,
    double? trailingDistance,
    double? leadingDistance,
  }) =>
      _SnapPoint(
        extent,
        toleranceDistance: distance,
        trailingToleranceDistance: trailingDistance,
        leadingToleranceDistance: leadingDistance,
      );

  factory Snap.avoidZone(
    double minExtent,
    double maxExtent, {
    double? delimiter,
  }) = _PreventSnapArea;

  bool shouldApplyFor(ScrollMetrics position, double proposedEnd);

  double targetPixelsFor(
    ScrollMetrics position,
    double proposedEnd,
    Tolerance tolerance,
    double velocity,
  );
}

class _SnapPoint implements Snap {
  _SnapPoint(
    this.extent, {
    double? toleranceDistance,
    double? trailingToleranceDistance,
    double? leadingToleranceDistance,
  })  : leadingExtent =
            extent - (leadingToleranceDistance ?? toleranceDistance ?? 0),
        trailingExtent =
            extent + (trailingToleranceDistance ?? toleranceDistance ?? 0);
  final double extent;
  final double trailingExtent;
  final double leadingExtent;

  @override
  bool shouldApplyFor(ScrollMetrics position, double proposedEnd) =>
      proposedEnd > leadingExtent && proposedEnd < trailingExtent;

  @override
  double targetPixelsFor(
    ScrollMetrics position,
    double proposedEnd,
    Tolerance tolerance,
    double velocity,
  ) =>
      extent;
}

class _PreventSnapArea implements Snap {
  _PreventSnapArea(this.minExtent, this.maxExtent, {double? delimiter})
      : assert(
          delimiter == null ||
              (delimiter >= minExtent) && (delimiter <= maxExtent),
          'The delimiter value should be between the minExtent and maxExtent',
        ),
        delimiter = delimiter ?? (minExtent + (maxExtent - minExtent) / 2);
  final double minExtent;
  final double maxExtent;
  final double delimiter;

  @override
  bool shouldApplyFor(ScrollMetrics position, double proposedEnd) =>
      proposedEnd > minExtent && proposedEnd < maxExtent;

  @override
  double targetPixelsFor(
    ScrollMetrics position,
    double proposedEnd,
    Tolerance tolerance,
    double velocity,
  ) {
    if (delimiter < proposedEnd) {
      return maxExtent;
    } else {
      return minExtent;
    }
  }
}
