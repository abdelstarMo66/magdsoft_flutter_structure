import 'package:dio/dio.dart';
import 'package:magdsoft_flutter_structure/constants/end_points.dart';
import 'package:magdsoft_flutter_structure/data/data_providers/remote/dio_helper.dart';

class LoginRequest {
  static Future<Response> verifyRequest({
    required String name,
    required String phone,
  }) {
    return DioHelper.postData(
      url: EndPoint.verifyPhone,
      body: {"phone": phone, "name": name},
    );
  }

  static Future<Response> otpRequest({
    required String code,
    required String phone,
  }) {
    return DioHelper.postData(
      url: EndPoint.otp,
      body: {"phone": phone, "code": code},
    );
  }
}
