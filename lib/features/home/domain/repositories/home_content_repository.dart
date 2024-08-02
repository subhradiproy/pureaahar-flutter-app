import '../../../../app/typedefs/typedefs.dart';
import '../../data/models/ad_banner.dart';

abstract interface class HomeContentRepository {
  /// Get the list of advertisement banners
  TaskEitherFailure<List<AdBanner>> getAdBanners();
}
