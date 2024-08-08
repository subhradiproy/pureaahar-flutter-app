import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sliver_tools/sliver_tools.dart';

import '../../../app/constants/app_colors.dart';
import '../../../app/constants/assets.dart';
import '../../../shared/widgets/app_text.dart';
import '../../home/domain/entities/brand_entity.dart';
import '../../home/domain/entities/menu_item_entity.dart';
import '../screens/menu_customisation_sheet.dart';

/// A widget that displays the list of menu sections grouped by header
/// and the components of the menu section
class MenuSectionList extends StatefulWidget {
  const MenuSectionList({required this.section, super.key});

  /// The menu section to display
  final MenuSection section;

  @override
  State<MenuSectionList> createState() => _MenuSectionListState();
}

class _MenuSectionListState extends State<MenuSectionList>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late final ValueNotifier<bool> _isExpanded;
  late Animation<double> _animation;

  @override
  void initState() {
    _isExpanded = ValueNotifier<bool>(true);
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    _animation =
        CurvedAnimation(parent: _controller, curve: Curves.fastOutSlowIn);
    super.initState();
  }

  @override
  void didUpdateWidget(covariant MenuSectionList oldWidget) {
    if (oldWidget.section != widget.section) _controller.reset();
    super.didUpdateWidget(oldWidget);
  }

  // Toggles the expansion of the menu section
  void _toggleExpansion() {
    _controller.isCompleted ? _controller.reverse() : _controller.forward();
    _isExpanded.value = !_isExpanded.value;
  }

  @override
  void dispose() {
    _controller.dispose();
    _isExpanded.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiSliver(
      key: widget.key,
      pushPinnedChildren: true,
      children: <Widget>[
        SliverPinnedHeader(
          child: Container(
            color: const Color(0xFFEEFFE0),
            padding: const EdgeInsets.only(left: 12, right: 6),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Text(
                    widget.section.category.categoryName,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                ValueListenableBuilder<bool>(
                  valueListenable: _isExpanded,
                  builder: (_, bool value, __) => IconButton(
                    icon: AnimatedBuilder(
                      animation: _animation,
                      builder: (_, __) => Transform.rotate(
                        angle: _animation.value * 3.14,
                        child: const Icon(Icons.expand_less),
                      ),
                    ),
                    onPressed: _toggleExpansion,
                    padding: EdgeInsets.zero,
                  ),
                ),
              ],
            ),
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          sliver: SliverFixedExtentList.builder(
            itemBuilder: (BuildContext context, int index) => _MenuItemCard(
              menu: widget.section.items[index],
              key: ValueKey<String>(widget.section.items[index].categoryId),
            ),
            itemExtent: 150,
            itemCount: widget.section.items.length,
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
      padding: const EdgeInsets.symmetric(vertical: 8),
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
