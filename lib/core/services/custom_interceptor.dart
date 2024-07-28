import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../app/typedefs/typedefs.dart';

/// Custom Interceptor class that extends the [Interceptor] class from the
/// [Dio] package. This adds the firebase app check to the request headers.
/// also adds the firebase id token to the request headers.
class CustomInterceptor extends Interceptor {
  const CustomInterceptor(this.ref);
  final Ref ref;

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers['X-Firebase-AppCheck'] = '1';
    // options.headers['Authorization'] = 'Bearer ${ref.read(tokenProvider)}';
  }

  @override
  void onResponse(
    Response<dynamic> response,
    ResponseInterceptorHandler handler,
  ) {
    if (response.data case {'result': final JSON map}) {
      handler.next(response..data = map);
    } else {
      handler.reject(
        DioException(
          requestOptions: response.requestOptions,
          response: response,
          error: 'Invalid response',
        ),
      );
    }
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    // TODO: implement onError
    super.onError(err, handler);
  }
}
