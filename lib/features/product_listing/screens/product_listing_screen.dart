import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../shared/widgets/async_widget.dart';
import '../../home/domain/entities/brand_entity.dart';
import '../providers/product_listing_notifier.dart';
import '../widgets/product_list_appbar.dart';

class ProductListingScreen extends ConsumerWidget {
  const ProductListingScreen({
    required this.outletId,
    super.key,
  });

  /// The id of the outlet
  final String outletId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: AsyncValueWidget<Outlet>(
        value: ref.watch(productListingNotifierProvider(outletId)),
        data: (Outlet outlet) => CustomScrollView(
          slivers: <Widget>[
            const ProductListAppbar(
              brandUrl:
                  'https://storage.googleapis.com/pureaahar-file-storage-dev/cuisines/images/20686a5d-7176-4aef-b870-265fe0cca1c4.jpeg',
            ),
            SliverList.builder(
              itemBuilder: (_, int index) => Container(
                height: 100,
                color: index.isEven ? Colors.white : Colors.grey[200],
              ),
              itemCount: 10,
            ),
          ],
        ),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (Object e, StackTrace s) => Center(
          child: Text('Error: $e'),
        ),
      ),
    );
  }
}
