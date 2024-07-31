import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/exceptions/app_exception.dart';
import '../../data/repositories/auth_repository_impl.dart';

part 'login_notifier.g.dart';
part 'login_state.dart';

@riverpod
class LoginNotifier extends _$LoginNotifier {
  @override
  AsyncValue<UserCredential?> build() {
    return const AsyncData<UserCredential?>(null);
  }

  /// Send OTP to the user's phone number
  Future<void> sendOTP(String phoneNumber) async {
    state = const AsyncLoading<UserCredential?>();
    // state = await ref
    //     .read(authRepositoryProvider)
    //     .sendOtp(phoneNumber)
    //     .match(
    //       (Failure l) => AsyncError<UserCredential?>(l, l.stackTrace),
    //       (String r) {},
    //     )
    //     .run();
  }

  /// Sign in with Google
  Future<void> signInWithGoogle() async {
    state = const AsyncLoading<UserCredential?>();
    final Either<Failure, UserCredential> task =
        await ref.read(authRepositoryProvider).signInWithGoogle().run();
    state = task.match(
      (Failure l) => AsyncError<UserCredential?>(l, l.stackTrace),
      AsyncData<UserCredential?>.new,
    );
  }

  /// Verify OTP and sign in
  Future<void> verifyOTP(String otp) async {
    state = const AsyncLoading<UserCredential?>();
    // state = await ref
    //     .read(authRepositoryProvider)
    //     .verifyOtp(number: '1234567890', otp: otp)
    //     .match(
    //       (Failure l) => AsyncError<UserCredential?>(l, l.stackTrace),
    //       (JSON r) {},
    //     )
    //     .run();
  }
}
