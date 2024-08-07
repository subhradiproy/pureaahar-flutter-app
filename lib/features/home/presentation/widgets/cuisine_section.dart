import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../../shared/widgets/app_text.dart';
import '../../domain/entities/cuisine_entity.dart';

class CuisineSection extends HookWidget {
  const CuisineSection({
    this.cuisines = const <Cuisine>[],
    super.key,
    this.textPadding = const EdgeInsets.fromLTRB(12, 8, 12, 0),
  });

  /// List of cuisines to be displayed
  final List<Cuisine> cuisines;

  /// Padding for the text
  final EdgeInsetsGeometry textPadding;

  @override
  Widget build(BuildContext context) {
    final double mainAxisExtent =
        useMemoized<double>(_computeExtent, <int>[cuisines.length]);
    return Container(
      constraints: const BoxConstraints(maxHeight: 240),
      margin: const EdgeInsets.only(top: 30),
      color: const Color(0xFFFFEFE2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Padding(
            padding: textPadding,
            child: AppText('Popular Cuisines', style: AppTextStyle.title3),
          ),
          const SizedBox(height: 15),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.only(left: 6, bottom: 10),
              scrollDirection: Axis.horizontal,
              physics: const PageScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisSpacing: 2,
                crossAxisSpacing: 12,
                crossAxisCount: 2,
                mainAxisExtent: mainAxisExtent,
              ),
              itemCount: cuisines.length,
              itemBuilder: (_, int index) => Column(
                children: <Widget>[
                  Expanded(
                    child: AspectRatio(
                      aspectRatio: 1,
                      child: Image.network(
                        cuisines[index].imageUrl,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(height: 4),
                  FittedBox(
                    fit: BoxFit.scaleDown,
                    child: AppText(
                      cuisines[index].name,
                      maxLines: 1,
                      textAlign: TextAlign.center,
                      style: AppTextStyle.paragraph1,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Computes the extent of the widget based on the text length
  double _computeExtent({double baseWidth = 26.0, double charWidth = 4.0}) {
    final int maxCharLength =
        cuisines.fold<int>(0, (int a, Cuisine b) => math.max(a, b.name.length));
    return baseWidth + maxCharLength * charWidth;
  }
}
