import 'package:firebase_auth/firebase_auth.dart';
import 'package:fpdart/fpdart.dart';

import '../../../../app/typedefs/typedefs.dart';

/// [AuthRepository] interface to be implemented in data layer
abstract interface class AuthRepository {
  const AuthRepository();

  /// Sign in with google
  TaskEither<Exception, UserCredential> signInWithGoogle();

  /// Send OTP
  TaskEither<Exception, String> sendOtp(String phoneNumber);

  /// Sign in with custom JWT token
  TaskEither<Exception, UserCredential> signInWithCustomToken(String token);

  /// Sign out
  TaskEither<Exception, Unit> signOut();

  /// Verify OTP
  TaskEither<Exception, JSON> verifyOtp({
    required String number,
    required String otp,
  });
}
