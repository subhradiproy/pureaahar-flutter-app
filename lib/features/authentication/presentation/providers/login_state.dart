part of 'login_notifier.dart';

sealed class LoginState extends Equatable {
  const LoginState();
}

final class LoginInitial extends LoginState {
  const LoginInitial();

  @override
  List<Object> get props => <Object>[];
}


