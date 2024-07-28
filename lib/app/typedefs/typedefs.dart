import 'package:fpdart/fpdart.dart';

import '../../core/exceptions/app_exception.dart';

/// Typedefs for the core package
typedef JSON = Map<String, Object?>;
typedef QueryParams = Map<String, String>;
typedef Headers = Map<String, String>;

/// TaskEither is a type that represents a computation that can fail or succeed.
/// It is similar to Either, but it is specialized for the use case
/// of computations that can fail.
typedef TaskEitherFailure<R> = TaskEither<AppException, R>;
typedef TaskEitherUnit = TaskEither<AppException, Unit>;
