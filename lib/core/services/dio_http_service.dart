import 'dart:async';
import 'dart:convert' show json;

import 'package:dio/dio.dart';

import '../../app/typedefs/typedefs.dart';
import '../../shared/utils/isolate_manager.dart';

/// A service class that wraps the [Dio] instance and provides methods for
/// basic network requests.
final class DioHttpService with IsolateManager {
  /// A public constructor that is used to create a Dio service and initialize
  /// the underlying [Dio] client.
  ///
  /// * [interceptors]: An [Iterable] for attaching custom
  /// [Interceptor]s to the underlying [_dio] client.
  /// * [httpClientAdapter]: Replaces the underlying [HttpClientAdapter] with
  /// this custom one.
  DioHttpService({
    required Dio client,
    Iterable<Interceptor>? interceptors,
    HttpClientAdapter? httpClientAdapter,
  }) : _dio = client {
    _dio.transformer = BackgroundTransformer()
      ..jsonDecodeCallback = _decodeJson;
    if (interceptors != null) _dio.interceptors.addAll(interceptors);
    if (httpClientAdapter != null) _dio.httpClientAdapter = httpClientAdapter;
  }

  /// An instance of [Dio] for executing network requests.
  final Dio _dio;

  /// Decode response data in a background isolate if the response is large.
  FutureOr<Object?> _decodeJson(String text) async {
    if (text.codeUnits.length < 50 * 1024) return json.decode(text);
    return await execute<Object?>(() => json.decode(text));
  }

  /// [queryParams] holds any query parameters for the request.
  ///
  /// [cancelToken] is used to cancel the request pre-maturely.
  ///
  /// [cacheOptions] are special cache instructions that can merge and override
  /// the [globalCacheOptions].
  ///
  /// [options] are special instructions that can be merged with the request.
  FutureOr<Response<R>> get<R>({
    required String endpoint,
    JSON? queryParams,
    Options? options,
    CancelToken? cancelToken,
    void Function(double)? onProgress,
  }) async {
    final Response<R> response = await _dio.get<R>(
      endpoint,
      queryParameters: queryParams,
      options: options,
      cancelToken: cancelToken,
      onReceiveProgress: onProgress != null
          ? (int received, int total) => onProgress(received / total)
          : null,
    );
    return response;
  }

  /// This method sends a `POST` request to the [endpoint], **decodes**
  /// the response and returns a parsed [ResponseModel] with a body of type [R].
  ///
  /// Any errors encountered during the request are caught and a custom
  /// [CustomException] is thrown.
  ///
  /// The [data] contains body for the request.
  ///
  /// [cancelToken] is used to cancel the request pre-maturely.
  ///
  /// [options] are special instructions that can be merged with the request.
  FutureOr<Response<R>> post<R>({
    required String endpoint,
    JSON? data,
    Options? options,
    CancelToken? cancelToken,
    void Function(double)? onSendProgress,
    void Function(double)? onReceiveProgress,
  }) async {
    final Response<R> response = await _dio.post<R>(
      endpoint,
      data: data,
      options: options,
      cancelToken: cancelToken,
      onReceiveProgress: onReceiveProgress != null
          ? (int received, int total) => onReceiveProgress(received / total)
          : null,
      onSendProgress: onSendProgress != null
          ? (int sent, int total) => onSendProgress(sent / total)
          : null,
    );
    return response;
  }

  /// This method sends a `PATCH` request to the [endpoint], **decodes**
  /// the response and returns a parsed [ResponseModel] with a body of type [R].
  ///
  /// Any errors encountered during the request are caught and a custom
  /// [CustomException] is thrown.
  ///
  /// The [data] contains body for the request.
  /// [cancelToken] is used to cancel the request pre-maturely.
  ///
  /// [options] are special instructions that can be merged with the request.
  FutureOr<Response<R>> patch<R>({
    required String endpoint,
    JSON? data,
    Options? options,
    CancelToken? cancelToken,
    void Function(double)? onSendProgress,
    void Function(double)? onReceiveProgress,
  }) async {
    final Response<R> response = await _dio.patch<R>(
      endpoint,
      data: data,
      options: options,
      cancelToken: cancelToken,
      onReceiveProgress: onReceiveProgress != null
          ? (int received, int total) => onReceiveProgress(received / total)
          : null,
      onSendProgress: onSendProgress != null
          ? (int sent, int total) => onSendProgress(sent / total)
          : null,
    );
    return response;
  }

  /// This method sends a `DELETE` request to the [endpoint], **decodes**
  /// the response and returns a parsed [ResponseModel] with a body of type [R].
  ///
  /// Any errors encountered during the request are caught and a custom
  /// [CustomException] is thrown.
  ///
  /// The [data] contains body for the request.
  ///
  /// [cancelToken] is used to cancel the request pre-maturely.
  ///
  /// [options] are special instructions that can be merged with the request.
  FutureOr<Response<R>> delete<R>({
    required String endpoint,
    JSON? data,
    Options? options,
    CancelToken? cancelToken,
  }) async {
    final Response<R> response = await _dio.delete<R>(
      endpoint,
      data: data,
      options: options,
      cancelToken: cancelToken,
    );
    return response;
  }

  // /// A utility method to merge [globalCacheOptions] and request
  // /// supplied [CacheOptions].
  // ///
  // /// The request [CacheOptions] overrides the overlapping values in
  // /// [globalCacheOptions].
  // ///
  // /// Returns a merged [CacheOptions] object.
  // CacheOptions? _mergeGlobalAndRequestCacheOptions(
  //   CacheOptions? cacheOptions,
  // ) {
  //   return globalCacheOptions?.copyWith(
  //     policy: cacheOptions?.policy,
  //     keyBuilder: cacheOptions?.keyBuilder,
  //     priority: cacheOptions?.priority,
  //     store: cacheOptions?.store,
  //     allowPostMethod: cacheOptions?.allowPostMethod,
  //     hitCacheOnErrorExcept: (cacheOptions?.hitCacheOnErrorExcept) != null
  //         ? Nullable(cacheOptions!.hitCacheOnErrorExcept)
  //         : null,
  //     maxStale: (cacheOptions?.maxStale) != null
  //         ? Nullable(cacheOptions!.maxStale)
  //         : null,
  //     cipher: (cacheOptions?.cipher) != null
  //         ? Nullable(cacheOptions!.cipher)
  //         : null,
  //   );
  // }
}
