import 'package:flutter/material.dart';

import '../../app/constants/app_colors.dart';
import '../../features/home/domain/entities/brand_entity.dart';
import 'app_text.dart';

class BrandCardWidget extends StatelessWidget {
  const BrandCardWidget({required this.item, this.onTap, super.key});

  final Brand item;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
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
                  constraints:
                      BoxConstraints(maxHeight: layout.maxHeight * 0.52),
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
                        item.name,
                        maxLines: 1,
                        style: AppTextStyle.paragraph1,
                      ),
                      if (item.nearestOutlet?.isAcceptingOrder ==
                          false) ...<Widget>[
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
                      if (item.description?.isNotEmpty ?? false)
                        AppText(
                          item.description!,
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
              if (item.nearestOutlet?.isAcceptingOrder == false)
                const Positioned.fill(child: ColoredBox(color: Colors.white54)),
            ],
          ),
        ),
      ),
    );
  }
}
