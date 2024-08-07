import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../app/typedefs/typedefs.dart';
import '../../../core/exceptions/app_exception.dart';
import '../../home/data/models/brand_model.dart';
import '../../home/data/repositories/home_content_repository_impl.dart';
import '../../home/domain/entities/brand_entity.dart';

part 'generated/product_listing_notifier.g.dart';

@riverpod
class ProductListingNotifier extends _$ProductListingNotifier {
  @override
  FutureOr<Outlet> build(String outletId) async {
    final TaskEitherFailure<Outlet> result = ref
        .watch(homeRepositoryProvider)
        .getOutletById(outletId)
        .map((OutletModel r) => r.toEntity());
    return await result.getOrElse((Failure l) => throw l).run();
  }
}
