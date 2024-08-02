import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// Generic AsyncValueWidget to work with values of type T
class AsyncValueWidget<T> extends StatelessWidget {
  const AsyncValueWidget({
    required this.value,
    required this.data,
    required this.error,
    required this.loading,
    super.key,
    this.skipLoadingOnReload = false,
    this.skipLoadingOnRefresh = true,
    this.skipLoadingOnHasValue = false,
    this.skipError = false,
  });

  /// [value] is the async value to be displayed.
  final AsyncValue<T> value;

  /// [data] is the builder function to be called when [value]
  /// is [AsyncValue.data].
  final Widget Function(T) data;

  /// [error] is the builder function to be called when [value]
  /// is [AsyncValue.error].
  final Widget Function(Object, StackTrace) error;

  /// [loading] is the builder function to be called when [value]
  /// is [AsyncValue.loading].
  final Widget Function() loading;

  /// [skipLoadingOnReload] (false by default) customizes whether [loading]
  ///  should be invoked if a provider rebuilds because of [Ref.watch].
  ///  In that situation, [when] will try to invoke either [error]/[data]
  ///  with the previous state.
  final bool skipLoadingOnReload;

  /// [skipLoadingOnRefresh] (true by default) decides whether to invoke [data]
  /// instead of [loading] if a previous [value] is available.
  final bool skipLoadingOnRefresh;

  /// [skipError] (false by default) decides whether to invoke [data] instead
  /// of [error] if a previous [value] is available.
  final bool skipError;

  /// [skipLoadingOnHasValue] (false by default) decides whether to invoke
  /// [data] instead of [loading] if a previous [value] is available.
  final bool skipLoadingOnHasValue;

  @override
  Widget build(BuildContext context) {
    if (skipLoadingOnHasValue &&
        value.hasValue &&
        (value.isLoading || value.hasError)) {
      return skipLoadingOnRefresh ? data(value.requireValue) : loading();
    }
    return value.when(
      skipError: skipError,
      skipLoadingOnRefresh: skipLoadingOnRefresh,
      skipLoadingOnReload: skipLoadingOnReload,
      data: data,
      loading: loading,
      error: error,
    );
  }
}
