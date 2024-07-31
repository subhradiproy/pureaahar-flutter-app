import 'package:firebase_auth/firebase_auth.dart';
import 'package:fpdart/fpdart.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../app/typedefs/typedefs.dart';
import '../../../../core/exceptions/app_exception.dart';
import '../../../../core/providers/global_providers.dart';
import '../../../../core/services/api_service.dart';
import '../../domain/repositories/auth_repository.dart';

part 'auth_repository_impl.g.dart';

@riverpod
AuthRepository authRepository(AuthRepositoryRef ref) {
  return AuthRepositoryImpl(
    auth: FirebaseAuth.instance,
    apiService: ref.watch(apiServiceProvider),
  );
}

class AuthRepositoryImpl implements AuthRepository {
  const AuthRepositoryImpl({
    required FirebaseAuth auth,
    required ApiService apiService,
  })  : _auth = auth,
        _api = apiService;

  final FirebaseAuth _auth;
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
      Failure.handleError,
    );
  }

  @override
  TaskEitherFailure<UserCredential> signInWithGoogle() {
    return TaskEitherFailure<UserCredential>.tryCatch(
      () async {
        final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
        final GoogleSignInAuthentication? googleAuth =
            await googleUser?.authentication;
        final UserCredential credential = await _auth.signInWithCredential(
          GoogleAuthProvider.credential(
            accessToken: googleAuth?.accessToken,
            idToken: googleAuth?.idToken,
          ),
        );
        return credential;
      },
      Failure.handleError,
    );
  }

  @override
  TaskEitherFailure<Unit> signOut() {
    return TaskEitherFailure<Unit>.tryCatch(
      () async => _auth.signOut().then((_) => unit),
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
