import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sliver_tools/sliver_tools.dart';

import '../../../app/constants/app_colors.dart';
import '../../../app/constants/assets.dart';
import '../../../shared/utils/snapping_scroll_physics.dart';
import '../../../shared/widgets/app_text.dart';
import '../../../shared/widgets/async_widget.dart';
import '../../home/domain/entities/brand_entity.dart';
import '../providers/product_listing_notifier.dart';
import '../widgets/menu_section_list.dart';
import '../widgets/product_list_appbar.dart';

class ProductListingScreen extends HookConsumerWidget {
  const ProductListingScreen({required this.outletId, super.key});

  /// The id of the outlet
  final String outletId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ScrollController scrollController = useScrollController();
    return Scaffold(
      body: AsyncValueWidget<Outlet>(
        value: ref.watch(productListingNotifierProvider(outletId)),
        data: (Outlet outlet) => CustomScrollView(
          controller: scrollController,
          physics: SnapScrollPhysics(snaps: <Snap>[Snap.avoidZone(0, 240)]),
          slivers: <Widget>[
            ProductListAppbar(brandUrl: outlet.parentBrand?.background ?? ''),
            if (outlet.filterTags.isNotEmpty) _buildFilters(outlet),
            for (final MenuSection section in outlet.menus)
              MenuSectionList(section: section),
          ],
        ),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (Object e, StackTrace s) => Center(
          child: Text('Error: $e'),
        ),
      ),
    );
  }

  /// Builds the filters for the product listing
  SliverLayoutBuilder _buildFilters(Outlet outlet) {
    return SliverLayoutBuilder(
      builder: (_, SliverConstraints constraints) => SliverPinnedHeader(
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          height: kToolbarHeight,
          padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: constraints.overlap > 0
                ? <BoxShadow>[
                    BoxShadow(
                      color: Colors.black.withOpacity(0.15),
                      blurRadius: 4,
                      offset: const Offset(0, 2),
                    ),
                  ]
                : null,
          ),
          child: Row(
            key: const ValueKey<String>('filters'),
            children: <Widget>[
              IconButton.filled(
                style: IconButton.styleFrom(
                  padding: const EdgeInsets.all(8),
                  backgroundColor: Colors.white,
                  shape: const CircleBorder(
                    side: BorderSide(color: AppColors.gray2, width: 0.7),
                  ),
                ),
                icon: ConstrainedBox(
                  constraints: BoxConstraints.tight(const Size.fromRadius(11)),
                  child: SvgPicture.asset(SvgAsset.tuneSettings.path),
                ),
                onPressed: () {},
              ),
              Expanded(
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.only(left: 4, right: 8),
                  itemCount: outlet.filterTags.length,
                  separatorBuilder: (_, __) => const SizedBox(width: 8),
                  itemBuilder: (_, int index) => FilterChip(
                    label: AppText(
                      outlet.filterTags[index],
                      style: AppTextStyle.paragraph1,
                    ),
                    onSelected: (_) {},
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
