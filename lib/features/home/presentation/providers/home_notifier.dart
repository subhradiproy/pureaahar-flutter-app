import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/exceptions/app_exception.dart';
import '../../data/models/ad_banner.dart';
import '../../data/repositories/home_content_repository_impl.dart';

part 'home_notifier.g.dart';

@riverpod
FutureOr<List<AdBanner>> adBannerFuture(AdBannerFutureRef ref) async => ref
    .read(homeRepositoryProvider)
    .getAdBanners()
    .getOrElse((Failure l) => throw l)
    .run();
