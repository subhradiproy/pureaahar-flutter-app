import 'package:firebase_auth/firebase_auth.dart';
import 'package:fpdart/fpdart.dart';

import '../../../../core/exceptions/app_exception.dart';
import '../../domain/repositories/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  const AuthRepositoryImpl({
    required FirebaseAuth auth,
  }) : _auth = auth;

  final FirebaseAuth _auth;

  @override
  TaskEither<AppException, Unit> sendOtp(String phoneNumber) {
    // TODO: implement sendOtp
    throw UnimplementedError();
  }

  @override
  TaskEither<AppException, UserCredential> signInWithCustomToken(String token) {
    return TaskEither<AppException, UserCredential>.tryCatch(
      () async {
        final UserCredential user = await _auth.signInWithCustomToken(token);
        if (user.credential == null) {
          throw FirebaseAuthException(
            code: 'custom_token_failed',
            message: 'Sign in failed',
          );
        }
        await _auth.signInWithCredential(user.credential!);
        return user;
      },
      AppException.handleError,
    );
  }

  @override
  TaskEither<AppException, UserCredential> signInWithGoogle() {
    return TaskEither<AppException, UserCredential>.tryCatch(
      () async {
        final GoogleAuthProvider googleProvider = GoogleAuthProvider();
        final UserCredential user =
            await _auth.signInWithProvider(googleProvider);
        if (user.credential == null) throw Exception('Google sign in failed');
        return user;
      },
      AppException.handleError,
    );
  }

  @override
  TaskEither<AppException, Unit> signOut() {
    return TaskEither<AppException, Unit>.tryCatch(
      () async => _auth.signOut().then((_) => unit),
      AppException.handleError,
    );
  }

  @override
  TaskEither<AppException, Unit> verifyOtp({
    required String nationalNumber,
    required String dialCode,
    required String otp,
  }) {
    // TODO: implement verifyOtp
    throw UnimplementedError();
  }
}
