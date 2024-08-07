import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../shared/utils/snapping_scroll_physics.dart';
import '../../../../shared/widgets/async_widget.dart';
import '../../domain/entities/brand_entity.dart';
import '../../domain/entities/cuisine_entity.dart';
import '../providers/home_notifier.dart';
import '../widgets/brand_section.dart';
import '../widgets/cuisine_section.dart';
import '../widgets/explore_app_bar.dart';

class ExploreHomeScreen extends HookConsumerWidget {
  const ExploreHomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ScrollController scrollController = useScrollController();
    return Scaffold(
      body: NotificationListener<ScrollEndNotification>(
        onNotification: (ScrollEndNotification notification) {
          print(notification.metrics.pixels);
          return true;
        },
        child: CustomScrollView(
          controller: scrollController,
          physics: SnapScrollPhysics.avoidBetween(0, 224),
          slivers: <Widget>[
            const ExploreAppBar(),
            _buildCuisines(ref),
            _buildReels(),
            _buildBrands(ref),
            const SliverToBoxAdapter(
              child: SizedBox(height: 100),
            ),
          ],
        ),
      ),
    );
  }

  /// Builds the cuisines section
  SliverToBoxAdapter _buildCuisines(WidgetRef ref) {
    return SliverToBoxAdapter(
      child: AsyncValueWidget<List<Cuisine>>(
        value: ref.watch(cuisineListProvider),
        loading: () => const Center(
          child: CircularProgressIndicator(),
        ),
        error: (Object p0, StackTrace p1) => const SizedBox(),
        data: (List<Cuisine> list) => CuisineSection(cuisines: list),
      ),
    );
  }

  /// Builds the reels section
  SliverToBoxAdapter _buildReels() {
    return SliverToBoxAdapter(
      child: Container(
        height: 230,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: const Center(
          child: Text('Reels Section'),
        ),
      ),
    );
  }

  /// Builds the brands section
  SliverToBoxAdapter _buildBrands(WidgetRef ref) {
    return SliverToBoxAdapter(
      child: AsyncValueWidget<List<Brand>>(
        value: ref.watch(brandsListProvider),
        loading: () => const Center(
          child: CircularProgressIndicator(),
        ),
        error: (Object p0, StackTrace p1) => const SizedBox(),
        data: (List<Brand> list) => BrandSection(brands: list),
      ),
    );
  }
}
