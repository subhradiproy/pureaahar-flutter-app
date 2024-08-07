import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../shared/widgets/async_widget.dart';
import '../../domain/entities/cuisine_entity.dart';
import '../providers/home_notifier.dart';
import '../widgets/cuisine_section.dart';
import '../widgets/explore_app_bar.dart';

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
          SliverToBoxAdapter(
            child: AsyncValueWidget<List<Cuisine>>(
              value: ref.watch(cuisineListProvider),
              loading: () => const Center(
                child: CircularProgressIndicator(),
              ),
              error: (Object p0, StackTrace p1) => const SizedBox(),
              data: (List<Cuisine> list) => CuisineSection(cuisines: list),
            ),
          ),
          // SliverPadding(
          //   padding: const EdgeInsets.fromLTRB(12, 24, 12, 12),
          //   sliver: SliverToBoxAdapter(
          //     child: AppText('Brands & Services', style: AppTextStyle.title3),
          //   ),
          // ),
          // SliverPadding(
          //   padding: const EdgeInsets.fromLTRB(12, 0, 12, 40),
          //   sliver: AsyncValueWidget<List<Restaurant>>(
          //     value: ref.watch(restaurantListProvider),
          //     loading: () => const SliverToBoxAdapter(
          //       child: Center(child: CircularProgressIndicator()),
          //     ),
          //     error: (Object p0, StackTrace p1) =>
          //         const SliverToBoxAdapter(child: SizedBox()),
          //     data: (List<Restaurant> item) => SliverGrid.builder(
          //       gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          //         crossAxisCount: 2,
          //         crossAxisSpacing: 10,
          //         mainAxisSpacing: 10,
          //         mainAxisExtent: 200,
          //       ),
          //       itemBuilder: (_, int index) => BrandCard(
          //         item: item[index],
          //         key: ValueKey<String>(item[index].restaurantId),
          //       ),
          //       itemCount: item.length,
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
