import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../shared/widgets/app_text.dart';
import '../../../../shared/widgets/async_widget.dart';
import '../../domain/entities/cuisine_entity.dart';
import '../providers/home_notifier.dart';
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
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                      child: AppText(
                        'Popular Cuisines',
                        style: AppTextStyle.label1,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: AppText('View All', style: AppTextStyle.label2),
                    ),
                  ],
                ),
                SizedBox.fromSize(
                  size: const Size.fromHeight(120),
                  child: AsyncValueWidget<List<Cuisine>>(
                    value: ref.watch(cuisineListProvider),
                    loading: () => const Center(
                      child: CircularProgressIndicator(),
                    ),
                    error: (Object p0, StackTrace p1) => const SizedBox(),
                    data: (List<Cuisine> p0) => ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: p0.length,
                      itemExtent: 100,
                      itemBuilder: (_, int index) => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Column(
                          children: <Widget>[
                            Expanded(
                              child: Image.network(p0[index].imageUrl),
                            ),
                            const SizedBox(height: 8),
                            AppText(
                              p0[index].name,
                              maxLines: 2,
                              textAlign: TextAlign.center,
                              style: AppTextStyle.body2,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
