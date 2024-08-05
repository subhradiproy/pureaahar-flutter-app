import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fpdart/fpdart.dart';
import 'package:phone_numbers_parser/phone_numbers_parser.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/exceptions/app_exception.dart';
import '../../data/repositories/auth_repository_impl.dart';

part 'generated/login_notifier.g.dart';
part 'login_state.dart';

@riverpod
class LoginNotifier extends _$LoginNotifier {
  @override
  AsyncValue<LoginState> build() => const AsyncData<LoginState>(LoginInitial());

  /// Send OTP to the user's phone number
  Future<void> sendOTP(PhoneNumber phone) async {
    state = const AsyncLoading<LoginState>();
    final Either<Failure, Unit> task =
        await ref.read(authRepositoryProvider).sendOtp(phone.nsn).run();
    state = task.match(
      (Failure l) => AsyncError<LoginState>(l, l.stackTrace),
      (_) => AsyncData<LoginState>(LoginVerificationState(phone)),
    );
  }

  /// Resend OTP to the user's phone number
  /// NOTE: This method is only available when the user
  /// is in the [LoginVerificationState] i.e. when the user sends OTP to
  /// the desired phone number
  Future<void> resendOTP() async {
    final AsyncValue<LoginState> prev = state;
    if (prev is! AsyncData<LoginVerificationState>) return;
    final Either<Failure, Unit> task = await ref
        .read(authRepositoryProvider)
        .sendOtp(prev.requireValue.number.nsn)
        .run();
    state = task.match(
      (Failure l) => AsyncError<LoginState>(l, l.stackTrace),
      (_) => prev,
    );
  }

  /// Sign in with Google
  Future<void> signInWithGoogle() async {
    state = const AsyncLoading<LoginState>();
    final Either<Failure, UserCredential> task =
        await ref.read(authRepositoryProvider).signInWithGoogle().run();
    state = task.match(
      (Failure l) => AsyncError<LoginState>(l, l.stackTrace),
      (UserCredential r) => AsyncData<LoginState>(LoginSuccess(r)),
    );
  }

  /// Verify OTP and sign in
  Future<void> verifyOTP(String otp) async {
    switch (state.valueOrNull) {
      case LoginVerificationState(:final PhoneNumber number):
        final AsyncValue<LoginState> prev = state;
        state = const AsyncLoading<LoginState>().copyWithPrevious(prev);
        final Either<Failure, UserCredential> task = await ref
            .read(authRepositoryProvider)
            .signInWithPhone(number: number.nsn, otp: otp)
            .run();
        state = await task.match(
          (Failure l) =>
              AsyncError<LoginState>(l, l.stackTrace).copyWithPrevious(prev),
          (UserCredential r) => AsyncData<LoginState>(LoginSuccess(r)),
        );
      default:
        state = AsyncError<LoginState>(
          Failure(message: 'Invalid state please restart the process'),
          StackTrace.current,
        );
    }
  }
}
