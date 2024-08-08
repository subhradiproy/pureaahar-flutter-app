import 'package:flutter/material.dart';
import 'package:sliver_tools/sliver_tools.dart';

import '../../home/domain/entities/brand_entity.dart';

/// A widget that displays the list of menu sections grouped by header
/// and the components of the menu section
class MenuSectionList extends StatelessWidget {
  const MenuSectionList({required this.section, super.key});

  final MenuSection section;

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    return MultiSliver(
      key: key,
      pushPinnedChildren: true,
      children: <Widget>[
        SliverPinnedHeader(
          child: Container(
            color: colorScheme.surface,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: <Widget>[
                Text(
                  section.category.categoryName,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Spacer(),
                IconButton(
                  icon: const Icon(Icons.arrow_forward_ios),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (_, int index) => Container(
              height: 100,
              color: index.isEven ? Colors.white : Colors.grey[200],
            ),
            childCount: 10,
          ),
        ),
      ],
    );
  }
}
