import 'package:firebase_auth/firebase_auth.dart';
import 'package:fpdart/fpdart.dart';

import '../../../../app/typedefs/typedefs.dart';
import '../../../../core/exceptions/app_exception.dart';

/// [AuthRepository] interface to be implemented in data layer
abstract interface class AuthRepository {
  const AuthRepository();

  /// Sign in with google
  TaskEither<Failure, UserCredential> signInWithGoogle();

  /// Send OTP
  TaskEither<Failure, String> sendOtp(String phoneNumber);

  /// Sign in with custom JWT token
  TaskEither<Failure, UserCredential> signInWithCustomToken(String token);

  /// Sign out
  TaskEither<Failure, Unit> signOut();

  /// Verify OTP
  TaskEither<Failure, JSON> verifyOtp({
    required String number,
    required String otp,
  });
}
