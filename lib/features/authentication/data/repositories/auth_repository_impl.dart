import 'dart:developer';

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
  TaskEitherFailure<Unit> sendOtp(String nsn) {
    return TaskEitherFailure<Unit>.tryCatch(
      () async => _api.post<JSON>(
        '/users/send-otp',
        queryParams: <String, String>{'login_type': 'mobile'},
        data: <String, String?>{
          'countryCode': '+91',
          'phone': nsn,
          'role': 'user',
        },
      ).then((Response<JSON> result) {
        if (result.data != null) return unit;
        throw Failure(message: 'Failed to send OTP');
      }),
      Failure.parseError,
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
      Failure.parseError,
    );
  }

  @override
  TaskEitherFailure<Unit> signOut() {
    return TaskEitherFailure<Unit>.tryCatch(
      () async => _auth.signOut().then((_) => unit),
      Failure.parseError,
    );
  }

  @override
  TaskEitherFailure<UserCredential> signInWithPhone({
    required String number,
    required String otp,
  }) =>
      TaskEitherFailure<UserCredential>.tryCatch(
        () async {
          final Response<JSON> result = await _api.post<JSON>(
            '/users/login-user',
            queryParams: <String, String>{'login_type': 'mobile'},
            data: <String, String?>{'phone': number, 'otp_entered': otp},
          );
          if (result.data == null) {
            throw Failure(message: 'Failed to verify OTP');
          }
          log(result.data as String? ?? 'No data');

          final UserCredential user = await _auth.signInWithCustomToken(
            result.data! as String,
          );
          return user;
        },
        Failure.parseError,
      );
}
