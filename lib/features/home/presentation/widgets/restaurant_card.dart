import 'package:flutter/material.dart';

import '../../../../app/constants/app_colors.dart';
import '../../../../shared/widgets/app_text.dart';
import '../../domain/entities/restaurant_entity.dart';

@immutable
class RestaurantCard extends StatelessWidget {
  const RestaurantCard({required this.restaurant, super.key});

  final Restaurant restaurant;

  @override
  Widget build(BuildContext context) {
    final bool isOutOfService = restaurant.nearestOutlet?.isOpened == false ||
        restaurant.nearestOutlet?.isAcceptingOrder == false;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            blurRadius: 8,
            offset: const Offset(0, -2),
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
              child: Image.network(
                'https://www.foodiesfeed.com/wp-content/uploads/2023/06/burger-with-melted-cheese.jpg',
                fit: BoxFit.cover,
                height: layout.maxHeight * 0.6,
                width: layout.maxWidth,
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                padding: const EdgeInsets.all(6),
                constraints: BoxConstraints(maxHeight: layout.maxHeight * 0.52),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(8),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    AppText(
                      restaurant.name,
                      maxLines: 1,
                      style: AppTextStyle.paragraph1,
                    ),
                    if (restaurant.nearestOutlet?.isOpened == true)
                      AppText('[Outlet is closed]', style: AppTextStyle.link),
                    if (restaurant.nearestOutlet?.isAcceptingOrder ==
                        true) ...<Widget>[
                      const SizedBox(height: 2),
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
                    ],
                    AppText(
                      restaurant.description?.isEmpty ?? true
                          ? 'Pure Veg meals bfjbffbsbfbshbb'
                          : restaurant.description!,
                      maxLines: 2,
                      style: AppTextStyle.paragraph1.copyWith(
                        color: AppColors.gray2,
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            if (isOutOfService)
              const Positioned.fill(child: ColoredBox(color: Colors.white54)),
          ],
        ),
      ),
    );
  }
}
