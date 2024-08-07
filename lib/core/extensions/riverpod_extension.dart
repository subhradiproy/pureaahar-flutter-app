import 'dart:async';

import 'package:hooks_riverpod/hooks_riverpod.dart';

extension AutoDisposeX<T extends Object> on AutoDisposeRef<T> {
  /// Caches the value of the provider for the specified [duration].
  /// And runs the callback on dispose
  void cacheFor(Duration duration, {void Function()? onDispose}) {
    final KeepAliveLink link = keepAlive();
    Timer? timer;
    onCancel(() => timer = Timer(duration, link.close));
    onResume(() => timer?.cancel());
    this.onDispose(() {
      timer?.cancel();
      onDispose?.call();
      link.close();
    });
  }

  /// Preserves the state of the provider until all the listeners are removed.
  void keepAliveUntilNoListeners() {
    keepAlive();
    onCancel(invalidateSelf);
  }

}

extension WidgetRefX on WidgetRef {
  /// Listen to a provider and close the subscription
  /// when the widget is disposed
  Future<R> safeRead<T, R>(
    Refreshable<T> notifier,
    Future<R> Function(T) call,
  ) async {
    final ProviderSubscription<T> sub = listenManual(notifier, (_, __) {});
    final R res = await call(sub.read());
    sub.close();
    return res;
  }
}
