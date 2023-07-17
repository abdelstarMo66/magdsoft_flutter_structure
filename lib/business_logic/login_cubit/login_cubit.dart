import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:magdsoft_flutter_structure/data/models/account_model.dart';
import 'package:magdsoft_flutter_structure/data/models/otp_model.dart';

import '../../data/network/responses/login_response.dart';
part 'login_state.dart';

class LoginCubit extends Cubit<LoginStates> {
  LoginCubit() : super(LoginInitial());

  static LoginCubit get(context) => BlocProvider.of(context);

  void verifyAccount({
    required String name,
    required String phone,
  }) {
    emit(LoadingLoginState());
    LoginResponse.verifyResponse(name: name, phone: phone).then((value) {
      emit(SuccessLoginState(value));
    }).catchError((e) {
      print(e.toString());
      emit(ErrorLoginState(e.toString()));
    });
  }

  void otp({
    required String code,
    required String phone,
  }) {
    emit(LoadingOTPState());
    LoginResponse.otpResponse(code: code, phone: phone).then((value) {
      emit(SuccessOTPState(value));
    }).catchError((e) {
      emit(ErrorOTPState(e.toString()));
    });
  }
}
