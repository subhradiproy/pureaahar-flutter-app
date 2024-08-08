import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../app/constants/app_colors.dart';
import '../../../../router/routes/routes.dart';
import '../../../../shared/widgets/app_text.dart';
import '../../domain/entities/brand_entity.dart';

class BrandSection extends StatelessWidget {
  const BrandSection({
    super.key,
    this.cardHeight = 270,
    this.brands = const <Brand>[],
  });

  /// List of brands to display
  final List<Brand> brands;

  /// Height of the cards
  final double cardHeight;

  // Minimum height of the widget below this the text will overflow
  double get _minHeight => 268;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: math.max(_minHeight, cardHeight),
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
              itemExtent: 150,
              physics: const PageScrollPhysics(),
              itemBuilder: (_, int index) => _BrandItem(
                brand: brands[index],
                isLastItem: index == brands.length - 1,
                key: ValueKey<String>(brands[index].restaurantId),
                onTap: () => context.pushNamed(
                  AppRoute.productListing.name,
                  pathParameters: <String, String>{
                    'id': brands[index].nearestOutlet?.id ??
                        brands[index].restaurantId,
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/// Individual brand item ( Private Widget )
class _BrandItem extends StatelessWidget {
  const _BrandItem({
    required this.brand,
    this.isLastItem = false,
    super.key,
    this.onTap,
  });

  /// Brand to display
  final Brand brand;

  /// Callback when the item is tapped
  final VoidCallback? onTap;

  /// Whether this is the last item in the list
  final bool isLastItem;

  @override
  Widget build(BuildContext context) {
    final bool enabled = brand.nearestOutlet?.isAcceptingOrder ?? true;
    return GestureDetector(
      onTap: enabled ? onTap : null,
      child: Container(
        margin: EdgeInsets.only(right: isLastItem ? 0 : 12),
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
          builder: (_, BoxConstraints constraints) => Stack(
            children: <Widget>[
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: AspectRatio(
                  aspectRatio: 1,
                  child: Image.network(brand.background, fit: BoxFit.cover),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  padding: const EdgeInsets.all(6),
                  constraints: BoxConstraints(
                    minHeight: constraints.maxHeight * 0.34,
                    maxHeight: constraints.maxHeight * 0.445,
                  ),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(8),
                    ),
                  ),
                  child: _buildInfo(enabled),
                ),
              ),
              if (!enabled)
                const Positioned.fill(
                  child: ColoredBox(color: Colors.white54),
                ),
            ],
          ),
        ),
      ),
    );
  }

  /// Builds the brand information section
  Column _buildInfo(bool enabled) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        FittedBox(
          fit: BoxFit.scaleDown,
          child: AppText(
            brand.name,
            maxLines: 1,
            style: AppTextStyle.paragraph1.copyWith(fontSize: 12),
          ),
        ),
        const SizedBox(height: 1),
        if (!enabled) ...<Widget>[
          FittedBox(
            fit: BoxFit.scaleDown,
            child: AppText(
              '[Currently not accepting orders]',
              maxLines: 1,
              style: AppTextStyle.link.copyWith(color: AppColors.error),
            ),
          ),
          const SizedBox(height: 3),
        ],
        if (brand.description?.isNotEmpty ?? false)
          AppText(
            brand.description!,
            maxLines: 3,
            textAlign: TextAlign.start,
            style: AppTextStyle.paragraph1.copyWith(
              color: AppColors.gray2,
              fontSize: 9,
            ),
          ),
      ],
    );
  }
}
