part of 'login_cubit.dart';

abstract class LoginStates {}

class LoginInitial extends LoginStates {}

class LoadingLoginState extends LoginStates {}

class SuccessLoginState extends LoginStates {
  final AccountModel dataModel;

  SuccessLoginState(this.dataModel);
}

class ErrorLoginState extends LoginStates {
  final String error;

  ErrorLoginState(this.error);
}

class LoadingOTPState extends LoginStates {}

class SuccessOTPState extends LoginStates {
  final OTPModel dataModel;

  SuccessOTPState(this.dataModel);
}

class ErrorOTPState extends LoginStates {
  final String error;

  ErrorOTPState(this.error);
}
