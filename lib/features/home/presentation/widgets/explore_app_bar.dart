import 'dart:math' as math;
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../../../../app/constants/assets.dart';
import '../../../../shared/widgets/app_text.dart';
import '../../../../shared/widgets/search_field.dart';

/// App bar for the explore screen
class ExploreAppBar extends StatelessWidget {
  const ExploreAppBar({
    super.key,
    this.scrollController,
    this.expandedHeight = 300,
  });

  final double expandedHeight;
  final ScrollController? scrollController;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: expandedHeight,
      collapsedHeight: kToolbarHeight,
      backgroundColor: Colors.white,
      pinned: true,
      stretch: true,
      flexibleSpace: _ExploreFlexibleSpaceBar(
        key: const ValueKey<String>('explore'),
        controller: scrollController,
        collapseMode: CollapseMode.parallax,
        background: Image.asset(
          ImageAsset.bestOffer.path,
          fit: BoxFit.cover,
        ),
        searchField: SearchField(
          hintText: 'What do you want to eat?',
          enabledVoiceTyping: true,
          readOnly: true,
          onTap: () {},
          contentPadding: EdgeInsets.zero,
        ),
        title: (double opacity) => NavigationToolbar(
          middle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  const Icon(Icons.location_pin, size: 18),
                  const SizedBox(width: 4),
                  Flexible(
                    child: AppText(
                      'Home',
                      style: AppTextStyle.title2.copyWith(
                        color: Colors.black.withOpacity(opacity),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 4),
              AppText(
                '3rd Floor, 2nd Wing, Flat 301',
                style: AppTextStyle.paragraph2.copyWith(
                  color: Colors.black.withOpacity(opacity),
                ),
              ),
            ],
          ),
          trailing: const CircleAvatar(
            radius: 20,
            child: Icon(Icons.person),
          ),
        ),
      ),
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(20),
        child: Container(
          height: 20,
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
          ),
        ),
      ),
    );
  }
}

class _ExploreFlexibleSpaceBar extends StatefulWidget {
  /// Creates a flexible space bar.
  ///
  /// Most commonly used in the [AppBar.flexibleSpace] field.
  const _ExploreFlexibleSpaceBar({
    required this.background,
    super.key,
    this.title,
    this.searchField,
    this.collapseMode = CollapseMode.none,
    this.controller,
  });

  /// The primary contents of the flexible space bar
  final Widget Function(double opacity)? title;

  /// Search field to be shown in the flexible space bar.
  final Widget? searchField;

  /// Shown behind the [title] when expanded.
  ///
  /// Typically an [Image] widget with [Image.fit] set to [BoxFit.cover].
  final Widget background;

  /// Collapse effect while scrolling.
  ///
  /// Defaults to [CollapseMode.parallax].
  final CollapseMode collapseMode;

  /// ScrollController to apply snapping effect
  final ScrollController? controller;

  @override
  State<_ExploreFlexibleSpaceBar> createState() =>
      _ExploreFlexibleSpaceBarState();
}

class _ExploreFlexibleSpaceBarState extends State<_ExploreFlexibleSpaceBar> {
  ScrollNotificationObserverState? _scrollObserver;
  FlexibleSpaceBarSettings? _settings;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _settings =
        context.findAncestorWidgetOfExactType<FlexibleSpaceBarSettings>();
    _scrollObserver?.removeListener(_handleScroll);
    _scrollObserver = ScrollNotificationObserver.maybeOf(context);
    _scrollObserver?.addListener(_handleScroll);
  }

  @override
  void dispose() {
    if (_scrollObserver != null) {
      _scrollObserver!.removeListener(_handleScroll);
      _scrollObserver!.dispose();
      _scrollObserver = null;
    }
    super.dispose();
  }

  /// Handles the scroll notification to apply snapping effect
  /// End Limit -> 224.0, Start Limit -> 0.0
  void _handleScroll(ScrollNotification notification) {
    final bool isAttached =
        _settings != null && (widget.controller?.hasClients ?? false);
    // if (isAttached && notification is ScrollEndNotification) {
    //   final double maxExtent = _settings!.maxExtent;
    //   final double current = notification.metrics.pixels;
    //   final double minExtent = _settings!.minExtent;
    //   if (current >= minExtent && current <= maxExtent) {
    //     _scrollToOffset(
    //       current > (maxExtent - minExtent) / 2 ? maxExtent : minExtent,
    //     );
    //   }
    // }
  }

  // Scrolls to the given offset with animation
  void _scrollToOffset(double snapValue) {
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => widget.controller!.animateTo(
        snapValue,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOut,
      ),
    );
  }

  // Returns the padding to be applied to the background image when collapsed.
  double _getCollapsePadding(double t, FlexibleSpaceBarSettings settings) {
    return switch (widget.collapseMode) {
      CollapseMode.pin => -(settings.maxExtent - settings.currentExtent),
      CollapseMode.none => 0,
      CollapseMode.parallax => -Tween<double>(
          begin: 0,
          end: (settings.maxExtent - settings.minExtent) / 4.0,
        ).transform(t),
    };
  }

  @override
  Widget build(BuildContext context) {
    final EdgeInsets viewPadding = MediaQuery.viewPaddingOf(context);
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final FlexibleSpaceBarSettings settings = context
            .dependOnInheritedWidgetOfExactType<FlexibleSpaceBarSettings>()!;
        final List<Widget> children = <Widget>[];
        final double deltaExtent = settings.maxExtent - settings.minExtent;

        // 0.0 -> Expanded
        // 1.0 -> Collapsed to toolbar
        final double t = ui.clampDouble(
          1.0 - (settings.currentExtent - settings.minExtent) / deltaExtent,
          0,
          1,
        );

        // background
        final double fadeStart =
            math.max(0, 1.0 - kToolbarHeight / (deltaExtent / 3));
        const double fadeEnd = 1;
        assert(fadeStart <= fadeEnd, 'Fade stop must come after the start.');
        // If the min and max extent are the same, the app bar cannot collapse
        // and the content should be visible, so opacity = 1.
        final double opacity = settings.maxExtent == settings.minExtent
            ? 1.0
            : 1.0 - Interval(fadeStart, fadeEnd).transform(t);
        double height = settings.maxExtent;

        // StretchMode.zoomBackground
        if (constraints.maxHeight > height) height = constraints.maxHeight;
        final double topPadding = _getCollapsePadding(t, settings);
        children.add(
          Positioned(
            top: topPadding,
            left: 0,
            right: 0,
            height: height,
            child: _FlexibleSpaceHeaderOpacity(
              // IOS is relying on this semantics node to correctly traverse
              // through the app bar when it is collapsed.
              alwaysIncludeSemantics: true,
              opacity: opacity,
              child: widget.background,
            ),
          ),
        );

        // StretchMode.blurBackground
        if (constraints.maxHeight > settings.maxExtent) {
          final double blurAmount =
              (constraints.maxHeight - settings.maxExtent) / 10;
          children.add(
            Positioned.fill(
              child: BackdropFilter(
                filter: ui.ImageFilter.blur(
                  sigmaX: blurAmount,
                  sigmaY: blurAmount,
                ),
                child: Container(color: Colors.transparent),
              ),
            ),
          );
        }

        // title
        if (widget.title != null) {
          final ThemeData theme = Theme.of(context);
          Widget? title;
          switch (theme.platform) {
            case TargetPlatform.iOS:
            case TargetPlatform.macOS:
              title = widget.title!.call(opacity);
            case TargetPlatform.android:
            case TargetPlatform.fuchsia:
            case TargetPlatform.linux:
            case TargetPlatform.windows:
              title = Semantics(
                namesRoute: true,
                child: widget.title!.call(opacity),
              );
          }

          if (opacity > 0.0) {
            children.add(
              Positioned(
                top: viewPadding.top,
                left: 0,
                right: 10,
                height: kToolbarHeight,
                child: _FlexibleSpaceHeaderOpacity(
                  // IOS is relying on this semantics node to correctly traverse
                  // through the app bar when it is collapsed.
                  alwaysIncludeSemantics: true,
                  opacity: opacity,
                  child: title,
                ),
              ),
            );
          }
        }

        // search field
        if (widget.searchField != null) {
          children.add(
            Positioned(
              top: viewPadding.top + kToolbarHeight + 4 + topPadding,
              left: 10,
              right: 10,
              child: widget.searchField!,
            ),
          );
        }

        return ClipRect(child: Stack(children: children));
      },
    );
  }
}

class _FlexibleSpaceHeaderOpacity extends SingleChildRenderObjectWidget {
  const _FlexibleSpaceHeaderOpacity({
    required this.opacity,
    required super.child,
    required this.alwaysIncludeSemantics,
  });

  final double opacity;
  final bool alwaysIncludeSemantics;

  @override
  RenderObject createRenderObject(BuildContext context) {
    return _RenderFlexibleSpaceHeaderOpacity(
      opacity: opacity,
      alwaysIncludeSemantics: alwaysIncludeSemantics,
    );
  }

  @override
  void updateRenderObject(
    BuildContext context,
    covariant _RenderFlexibleSpaceHeaderOpacity renderObject,
  ) {
    renderObject
      ..alwaysIncludeSemantics = alwaysIncludeSemantics
      ..opacity = opacity;
  }
}

class _RenderFlexibleSpaceHeaderOpacity extends RenderOpacity {
  _RenderFlexibleSpaceHeaderOpacity({
    super.opacity,
    super.alwaysIncludeSemantics,
  });

  @override
  bool get isRepaintBoundary => false;

  @override
  void paint(PaintingContext context, Offset offset) {
    if (child == null) return;
    if ((opacity * 255).roundToDouble() <= 0) {
      layer = null;
      return;
    }
    assert(needsCompositing);
    layer = context.pushOpacity(
      offset,
      (opacity * 255).round(),
      super.paint,
      oldLayer: layer as OpacityLayer?,
    );
    assert(() {
      layer!.debugCreator = debugCreator;
      return true;
    }());
  }
}
