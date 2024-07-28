import 'package:worker_manager/worker_manager.dart';

/// [IsolateManager] is a mixin class that provides the ability to manage
/// isolates efficiently.
mixin class IsolateManager {
  /// Dispose the worker manager
  void dispose() => workerManager.dispose();

  /// Initialize the worker manager
  Future<void> init({int maxCount = 1}) =>
      workerManager.init(isolatesCount: maxCount, dynamicSpawning: true);

  /// Execute a task with a return value
  /// [fn] is the task to be executed
  /// [priority] is the priority of the task
  Cancelable<R> execute<R>(
    Execute<R> fn, {
    WorkPriority priority = WorkPriority.immediately,
  }) =>
      workerManager.execute(fn, priority: priority);
}
