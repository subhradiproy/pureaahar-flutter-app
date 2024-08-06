import '../../../../app/typedefs/typedefs.dart';
import '../../data/models/cuisine_model.dart';
import '../../data/models/restaurant_banner_model.dart';
import '../../data/models/restaurant_model.dart';

abstract interface class HomeContentRepository {
  /// Get the list of advertisement banners
  TaskEitherFailure<List<RestaurantBannerModel>> getAdBanners();

  /// Get the list of cuisines
  TaskEitherFailure<List<CuisineModel>> getCuisines();

  /// Get the list of restaurants
  TaskEitherFailure<List<RestaurantModel>> getRestaurants({
    required String latitude,
    required String longitude,
  });
}
