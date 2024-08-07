import 'dart:ui';

import 'package:flutter/material.dart';

import '../../../../app/constants/app_colors.dart';
import '../../../../shared/widgets/app_text.dart';
import '../../domain/entities/brand_entity.dart';

class BrandSection extends StatelessWidget {
  const BrandSection({super.key, this.brands = const <Brand>[]});

  /// List of brands to display
  final List<Brand> brands;

  // minimum height of the widget below this the text will overflow
  double get _minHeight => 268;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: _minHeight,
      padding: const EdgeInsets.fromLTRB(12, 20, 12, 20),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          AppText('Brands & Services', style: AppTextStyle.title3),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              scrollDirection: Axis.horizontal,
              itemCount: brands.length,
              itemExtent: 163,
              physics: const PageScrollPhysics(),
              itemBuilder: (_, int index) => _brandItem(index),
            ),
          ),
        ],
      ),
    );
  }

  /// List item for an individual brand
  GestureDetector _brandItem(int index) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.only(right: index == brands.length - 1 ? 0 : 12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.black.withOpacity(0.16),
              blurRadius: 4,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        clipBehavior: Clip.hardEdge,
        child: LayoutBuilder(
          builder: (_, BoxConstraints layout) => Stack(
            children: <Widget>[
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: AspectRatio(
                  aspectRatio: 13 / 10,
                  child: Image.network(
                    brands[index].background,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              if (brands[index].logo != null)
                Align(
                  alignment: const Alignment(0, -0.7),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(6),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 1, sigmaY: 1),
                      child: Container(
                        alignment: Alignment.center,
                        constraints: BoxConstraints.tightFor(
                          height: layout.maxHeight * 0.38,
                          width: layout.maxWidth * 0.6,
                        ),
                        color: Colors.white.withOpacity(0.43),
                        child: AspectRatio(
                          aspectRatio: 16 / 9,
                          child: Image.network(
                            brands[index].logo!,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  padding: const EdgeInsets.all(6),
                  constraints: BoxConstraints(
                    maxHeight: layout.maxHeight * 0.48,
                  ),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(8),
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      FittedBox(
                        fit: BoxFit.scaleDown,
                        child: AppText(
                          brands[index].name,
                          maxLines: 1,
                          style: AppTextStyle.paragraph1,
                        ),
                      ),
                      const SizedBox(height: 3),
                      if (brands[index].nearestOutlet?.isAcceptingOrder ==
                          false) ...<Widget>[
                        FittedBox(
                          fit: BoxFit.scaleDown,
                          child: AppText(
                            '[Currently not accepting orders]',
                            maxLines: 1,
                            style: AppTextStyle.link.copyWith(
                              color: AppColors.error,
                            ),
                          ),
                        ),
                        const SizedBox(height: 3),
                      ],
                      if (brands[index].description?.isNotEmpty ?? false)
                        AppText(
                          brands[index].description!,
                          maxLines: 3,
                          style: AppTextStyle.paragraph1.copyWith(
                            color: AppColors.gray2,
                            fontSize: 10,
                          ),
                        ),
                    ],
                  ),
                ),
              ),
              if (brands[index].nearestOutlet?.isAcceptingOrder == false)
                const Positioned.fill(
                  child: ColoredBox(color: Colors.white54),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
