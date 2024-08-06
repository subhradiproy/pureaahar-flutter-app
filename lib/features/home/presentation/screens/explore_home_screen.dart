import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../shared/widgets/app_text.dart';
import '../../../../shared/widgets/async_widget.dart';
import '../../domain/entities/cuisine_entity.dart';
import '../../domain/entities/restaurant_entity.dart';
import '../providers/home_notifier.dart';
import '../widgets/explore_app_bar.dart';
import '../widgets/restaurant_card.dart';

class ExploreHomeScreen extends HookConsumerWidget {
  const ExploreHomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ScrollController scrollController = useScrollController();
    return Scaffold(
      body: CustomScrollView(
        controller: scrollController,
        slivers: <Widget>[
          ExploreAppBar(scrollController: scrollController),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            sliver: SliverToBoxAdapter(
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: AppText(
                          'Popular Cuisines',
                          style: AppTextStyle.title3,
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: AppText('View All', style: AppTextStyle.label2),
                      ),
                    ],
                  ),
                  SizedBox.fromSize(
                    size: const Size.fromHeight(100),
                    child: AsyncValueWidget<List<Cuisine>>(
                      value: ref.watch(cuisineListProvider),
                      loading: () => const Center(
                        child: CircularProgressIndicator(),
                      ),
                      error: (Object p0, StackTrace p1) => const SizedBox(),
                      data: (List<Cuisine> p0) => ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: p0.length,
                        itemExtentBuilder: (int index, _) =>
                            _computeExtent(p0[index].name),
                        itemBuilder: (_, int index) => Column(
                          children: <Widget>[
                            Expanded(
                              child: Image.network(
                                p0[index].imageUrl,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(height: 8),
                            AppText(
                              p0[index].name,
                              maxLines: 1,
                              textAlign: TextAlign.center,
                              style: AppTextStyle.body2,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.fromLTRB(12, 24, 12, 12),
            sliver: SliverToBoxAdapter(
              child: AppText('Brands & Services', style: AppTextStyle.title3),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            sliver: AsyncValueWidget<List<Restaurant>>(
              value: ref.watch(restaurantListProvider),
              loading: () => const SliverToBoxAdapter(
                child: Center(child: CircularProgressIndicator()),
              ),
              error: (Object p0, StackTrace p1) =>
                  const SliverToBoxAdapter(child: SizedBox()),
              data: (List<Restaurant> item) => SliverGrid.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  mainAxisExtent: 200,
                ),
                itemBuilder: (_, int index) => RestaurantCard(
                  restaurant: item[index],
                  key: ValueKey<String>(item[index].id),
                ),
                itemCount: item.length,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Computes the extent of the widget based on the text length
  double _computeExtent(
    String text, {
    double baseWidth = 50.0,
    double charWidth = 5.0,
    int maxCharsBeforeEllipsis = 20,
  }) {
    final int chars = text.length;
    final double calculatedWidth = baseWidth + chars * charWidth;
    if (chars > maxCharsBeforeEllipsis) return min(100, calculatedWidth * 0.8);
    return max(chars * charWidth, calculatedWidth);
  }
}
