import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../configuration/flavors.dart';
import '../services/dio_http_service.dart';

part 'global_providers.g.dart';

@Riverpod(keepAlive: true)
Dio dioClient(DioClientRef ref) {
  const String baseUrl = Flavor.baseUrl;
  final Dio dio = Dio(BaseOptions(baseUrl: baseUrl));
  ref.onDispose(dio.close);
  return dio;
}

@Riverpod(keepAlive: true)
DioHttpService apiService(ApiServiceRef ref) {
  return DioHttpService(
    client: ref.watch(dioClientProvider),
    interceptors: <Interceptor>[
      LogInterceptor(),
      // InterceptorsWrapper(
      //   onRequest: (RequestOptions options, RequestInterceptorHandler handler) {
      //     // Add bearer token to the request headers
      //     options.headers['Authorization'] =
      //         'Bearer ${ref.read(tokenProvider)}';
      //     return handler.next(options);
      //   },
      // ),
    ],
  );
}
