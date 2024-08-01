import 'dart:async';

enum DebounceMode {
  /// The callback function is executed after the specified duration
  leading,

  /// The callback function is executed immediately on the first call, and
  /// subsequent calls within the specified duration are ignored.
  trailing,

  /// The callback function is executed both on the leading and trailing
  /// of the timer. It is invoked immediately on the first call and after the
  /// specified duration has passed without any new calls.
  hybrid
}

/// A Debounce class that helps to debounce or throttle function calls.
mixin class Debouncer {
  Timer? _debouncer;
  Timer? _throttler;

  /// Debounce the given [action] for the given [duration].
  void run(
    Duration duration,
    ZoneCallback<void> action, [
    DebounceMode mode = DebounceMode.trailing,
  ]) {
    if (mode != DebounceMode.trailing) action.call();
    _debouncer?.cancel();
    _debouncer = Timer(duration, () {
      if (mode != DebounceMode.leading) action.call();
    });
  }

  /// Throttles the provided [action] function by executing it once,
  /// and preventing further invocations within the specified [duration].
  ///
  /// If the [throttle] method is called multiple times within the [duration],
  /// only the first call will trigger the function. Subsequent calls during
  /// this period will be ignored until the [duration] has passed, at which
  /// point the function can be triggered again.
  ///
  /// Note: The [action] function is executed immediately upon calling
  /// [throttle] if no previous call is active, otherwise, it will be delayed
  /// until the next eligible time slot after the [duration].
  void throttle(
    Duration duration,
    ZoneCallback<void> action, [
    DebounceMode mode = DebounceMode.leading,
  ]) {
    if (_throttler?.isActive ?? false) return;
    if (mode != DebounceMode.trailing) action.call();
    _throttler = Timer(duration, () {});
    if (mode != DebounceMode.leading) action.call();
  }

  /// Cancel any pending debounced action.
  void cancelAll() {
    _debouncer?.cancel();
    _throttler?.cancel();
  }

  /// Dispose the debouncer.
  void dispose() {
    cancelAll();
    _debouncer = null;
    _throttler = null;
  }
}
