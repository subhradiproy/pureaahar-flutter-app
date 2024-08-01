import 'package:fpdart/fpdart.dart';

import '../exceptions/app_exception.dart';

abstract class BaseUseCase<T, Params> {
  const BaseUseCase();

  Future<Either<Failure, T>> call(Params params);
}
