import 'package:firebase_auth/firebase_auth.dart' show FirebaseAuthException;

/// An exception thrown when an error occurs in the app.
interface class Failure implements Exception {
  Failure({required this.message, this.stackTrace});

  factory Failure.handleError(Object e, StackTrace stk) {
    return switch (e) {
      FirebaseAuthException(:final String message) =>
        Failure(message: message, stackTrace: stk),
      _ => UnkownException(stackTrace: stk),
    };
  }

  final String message;
  final StackTrace? stackTrace;
}

/// An exception thrown when an unknown error occurs.
class UnkownException implements Failure {
  const UnkownException({this.stackTrace});

  @override
  String get message => 'Something went wrong';

  @override
  final StackTrace? stackTrace;
}
