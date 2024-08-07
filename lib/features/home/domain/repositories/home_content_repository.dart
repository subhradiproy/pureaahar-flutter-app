import '../../../../app/typedefs/typedefs.dart';
import '../../data/models/brand_model.dart';
import '../../data/models/cuisine_model.dart';
import '../../data/models/restaurant_banner_model.dart';

abstract interface class HomeContentRepository {
  /// Get the list of advertisement banners
  TaskEitherFailure<List<RestaurantBannerModel>> getAdBanners();

  /// Get the list of cuisines
  TaskEitherFailure<List<CuisineModel>> getCuisines();

  /// Get the list of restaurants
  TaskEitherFailure<List<BrandModel>> getRestaurants({
    required String latitude,
    required String longitude,
  });

  /// Get the outlet information by outlet id
  TaskEitherFailure<OutletModel> getOutletById(String outletId);
}
