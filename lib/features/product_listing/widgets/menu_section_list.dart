import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sliver_tools/sliver_tools.dart';

import '../../../app/constants/app_colors.dart';
import '../../../app/constants/assets.dart';
import '../../../shared/widgets/app_text.dart';
import '../../home/domain/entities/brand_entity.dart';
import '../../home/domain/entities/menu_item_entity.dart';
import 'menu_customisation_sheet.dart';

/// A widget that displays the list of menu sections grouped by header
/// and the components of the menu section
class MenuSectionList extends StatelessWidget {
  const MenuSectionList({required this.section, super.key});

  /// The menu section to display
  final MenuSection section;

  @override
  Widget build(BuildContext context) {
    return MultiSliver(
      key: key,
      pushPinnedChildren: true,
      children: <Widget>[
        SliverPinnedHeader(
          child: Container(
            color: const Color(0xFFEEFFE0),
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Text(
                    section.category.categoryName,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Spacer(),
              ],
            ),
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          sliver: SliverFixedExtentList.builder(
            itemBuilder: (BuildContext context, int index) {
              return _MenuItemCard(
                menu: section.items[index],
                key: ValueKey<String>(section.items[index].categoryId),
              );
            },
            itemExtent: 160,
            itemCount: section.items.length,
          ),
        ),
      ],
    );
  }
}

/// A widget that displays the menu item card
class _MenuItemCard extends StatelessWidget {
  const _MenuItemCard({required this.menu, super.key});

  /// Menu item to display
  final MenuItem menu;

  @override
  Widget build(BuildContext context) {
    return Padding(
      key: key,
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.network(
              menu.itemImageUrl,
              errorBuilder: (_, ___, __) => const SizedBox.square(
                dimension: 120,
                child: Icon(Icons.error),
              ),
              fit: BoxFit.contain,
              width: 120,
              cacheHeight: 180,
              cacheWidth: 180,
              height: 120,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    ConstrainedBox(
                      constraints: BoxConstraints.tight(const Size.square(22)),
                      child: SvgPicture.asset(SvgAsset.vegIcon.path),
                    ),
                    const SizedBox(width: 4),
                    Expanded(
                      child: SizedBox.fromSize(
                        size: const Size.fromHeight(22),
                        child: _buildTags(),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 4),
                  child: AppText(
                    menu.itemName,
                    style: AppTextStyle.title3,
                    maxLines: 1,
                  ),
                ),
                if (menu.itemDescription != null)
                  AppText(
                    menu.itemDescription ?? '',
                    maxLines: 2,
                    style: AppTextStyle.link.copyWith(color: AppColors.gray2),
                  ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          AppText(
                            '₹ ${menu.displayAmount()}',
                            style: AppTextStyle.paragraph1.copyWith(
                              color: Colors.green,
                            ),
                          ),
                          if (menu.isDiscounted)
                            AppText(
                              '₹ ${menu.price}',
                              style: AppTextStyle.paragraph2.copyWith(
                                color: AppColors.gray2,
                                decoration: TextDecoration.lineThrough,
                              ),
                            ),
                        ],
                      ),
                    ),
                    IconButton.filled(
                      style: IconButton.styleFrom(
                        backgroundColor: AppColors.secondaryLight,
                        foregroundColor: AppColors.secondary,
                        side: const BorderSide(color: AppColors.secondary),
                      ),
                      icon: const Icon(Icons.add),
                      onPressed: () => _showCustomizer(context),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Builds the tags for the menu item
  ListView _buildTags() {
    return ListView.separated(
      separatorBuilder: (_, __) => const SizedBox(width: 4),
      scrollDirection: Axis.horizontal,
      itemCount: menu.tags.take(3).length,
      itemBuilder: (_, int index) => Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: AppColors.secondary,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
        child: AppText(
          menu.tags[index],
          style: AppTextStyle.link.copyWith(color: AppColors.white),
        ),
      ),
    );
  }

  /// Opens the menu customisation sheet
  void _showCustomizer(BuildContext context) {
    showModalBottomSheet<void>(
      context: context,
      builder: (_) => const MenuCustomisationSheet(),
    );
  }
}
