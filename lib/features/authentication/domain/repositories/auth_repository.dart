import 'package:firebase_auth/firebase_auth.dart';
import 'package:fpdart/fpdart.dart';

import '../../../../core/exceptions/app_exception.dart';

/// [AuthRepository] interface to be implemented in data layer
abstract interface class AuthRepository {
  const AuthRepository();

  /// Sign in with google
  TaskEither<Failure, UserCredential> signInWithGoogle();

  /// Send OTP
  TaskEither<Failure, Unit> sendOtp(String phoneNumber);

  /// Sign out
  TaskEither<Failure, Unit> signOut();

  /// Verify OTP
  TaskEither<Failure, UserCredential> signInWithPhone({
    required String number,
    required String otp,
  });
}
