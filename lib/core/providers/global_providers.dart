import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../configuration/flavors.dart';
import '../services/api_service.dart';

part 'generated/global_providers.g.dart';

@Riverpod(keepAlive: true)
Dio dioClient(DioClientRef ref) {
  final Dio dio = Dio(BaseOptions(baseUrl: Flavor.baseUrl));
  ref.onDispose(dio.close);
  return dio;
}

@Riverpod(keepAlive: true)
ApiService apiService(ApiServiceRef ref) {
  return ApiService(
    client: ref.watch(dioClientProvider),
    interceptors: <Interceptor>[
      LogInterceptor(
        responseBody: true,
        requestHeader: false,
        responseHeader: false,
      ),
      // AuthorizationInterceptor(ref),
    ],
  );
}
