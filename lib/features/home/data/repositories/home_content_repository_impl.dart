import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../app/typedefs/typedefs.dart';
import '../../../../core/exceptions/app_exception.dart';
import '../../../../core/providers/global_providers.dart';
import '../../../../core/services/api_service.dart';
import '../../domain/repositories/home_content_repository.dart';
import '../models/ad_banner.dart';

part 'home_content_repository_impl.g.dart';

@riverpod
HomeContentRepository homeRepository(HomeRepositoryRef ref) {
  return HomeContentRepositoryImpl(
    apiService: ref.watch(apiServiceProvider),
  );
}

class HomeContentRepositoryImpl implements HomeContentRepository {
  const HomeContentRepositoryImpl({
    required ApiService apiService,
  }) : _client = apiService;

  final ApiService _client;

  @override
  TaskEitherFailure<List<AdBanner>> getAdBanners() {
    return TaskEitherFailure<List<AdBanner>>.tryCatch(
      () async => _client.get<JSON>('/v1/api/restaurants/banners').then(
        (Response<JSON> json) {
          final List<Object?>? banners = json.data?['data'] as List<Object?>?;
          if (banners == null || banners.isEmpty) return <AdBanner>[];
          return banners.cast<JSON>().map(AdBanner.fromMap).toList();
        },
      ),
      Failure.parseError,
    );
  }
}
