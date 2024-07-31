part of 'login_notifier.dart';

/// The state of the login
sealed class LoginState extends Equatable {
  const LoginState();

  @override
  List<Object?> get props => <Object?>[];
}

/// The initial state of the login
final class LoginInitial extends LoginState {
  const LoginInitial();
}

/// The Verification state of the login
final class LoginVerificationState extends LoginState {
  const LoginVerificationState(this.number);

  final PhoneNumber number;

  @override
  List<Object?> get props => <Object?>[number];
}

/// The state when the login is successful
final class LoginSuccess extends LoginState {
  const LoginSuccess(this.user);

  final UserCredential user;

  @override
  List<UserCredential> get props => <UserCredential>[user];
}
