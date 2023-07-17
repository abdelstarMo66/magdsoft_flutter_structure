import 'package:magdsoft_flutter_structure/data/network/requests/login_request.dart';

import '../../models/account_model.dart';
import '../../models/otp_model.dart';

class LoginResponse {
  static Future<AccountModel> verifyResponse({
    required String name,
    required String phone,
  }) async {
    final response = await LoginRequest.verifyRequest(name: name, phone: phone);
    return AccountModel.fromJson(response.data);
  }

  static Future<OTPModel> otpResponse({
    required String code,
    required String phone,
  }) async {
    final response = await LoginRequest.otpRequest(code: code, phone: phone);
    return OTPModel.fromJson(response.data);
  }
}
