import '../../../../app/typedefs/typedefs.dart';
import '../../data/models/cuisine_model.dart';
import '../../data/models/restaurant_banner_model.dart';

abstract interface class HomeContentRepository {
  const HomeContentRepository._();

  /// Get the list of advertisement banners
  TaskEitherFailure<List<RestaurantBannerModel>> getAdBanners();

  /// Get the list of cuisines
  TaskEitherFailure<List<CuisineModel>> getCuisines();
}
