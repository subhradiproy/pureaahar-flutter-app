import 'package:firebase_auth/firebase_auth.dart';
import 'package:fpdart/fpdart.dart';

import '../../../../app/typedefs/typedefs.dart';
import '../../../../core/exceptions/app_exception.dart';
import '../../../../core/services/api_service.dart';
import '../../domain/repositories/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  const AuthRepositoryImpl({
    required FirebaseAuth auth,
    required ApiService apiService,
  })  : _firebase = auth,
        _api = apiService;

  final FirebaseAuth _firebase;
  final ApiService _api;

  @override
  TaskEitherFailure<String> sendOtp(String nationalNumber) {
    return TaskEitherFailure<String>.tryCatch(
      () async {
        final Response<JSON> result = await _api.post<JSON>(
          endpoint: '/users/send-otp',
          queryParams: <String, String>{'login_type': 'mobile'},
          data: <String, String?>{
            'countryCode': '+91',
            'phone': nationalNumber,
            'role': 'user',
          },
        );
        if (result.data != null) return 'OTP sent successfully';
        throw Failure(message: 'Failed to send OTP');
      },
      Failure.handleError,
    );
  }

  @override
  TaskEitherFailure<UserCredential> signInWithCustomToken(String token) {
    return TaskEitherFailure<UserCredential>.tryCatch(
      () async {
        final UserCredential user =
            await _firebase.signInWithCustomToken(token);
        if (user.credential == null) {
          throw FirebaseAuthException(
            code: 'custom_token_failed',
            message: 'Sign in failed',
          );
        }
        await _firebase.signInWithCredential(user.credential!);
        return user;
      },
      Failure.handleError,
    );
  }

  @override
  TaskEitherFailure<UserCredential> signInWithGoogle() {
    return TaskEitherFailure<UserCredential>.tryCatch(
      () async {
        final GoogleAuthProvider googleProvider = GoogleAuthProvider();
        final UserCredential user =
            await _firebase.signInWithProvider(googleProvider);
        if (user.credential == null) throw Exception('Google sign in failed');
        return user;
      },
      Failure.handleError,
    );
  }

  @override
  TaskEitherFailure<Unit> signOut() {
    return TaskEitherFailure<Unit>.tryCatch(
      () async => _firebase.signOut().then((_) => unit),
      Failure.handleError,
    );
  }

  @override
  TaskEitherFailure<JSON> verifyOtp({
    required String number,
    required String otp,
  }) =>
      TaskEitherFailure<JSON>.tryCatch(
        () async {
          final Response<JSON> result = await _api.post<JSON>(
            endpoint: '/users/login-user',
            queryParams: <String, String>{'login_type': 'mobile'},
            data: <String, String?>{'phone': number, 'otp_entered': otp},
          );
          if (result.data != null) return result.data!;
          throw Failure(message: 'Failed to verify OTP');
        },
        Failure.handleError,
      );
}
