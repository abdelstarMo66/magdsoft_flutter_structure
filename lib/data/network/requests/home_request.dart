import 'package:dio/dio.dart';
import 'package:magdsoft_flutter_structure/constants/end_points.dart';
import 'package:magdsoft_flutter_structure/data/data_providers/remote/dio_helper.dart';

class HomeRequest {
  static Future<Response> getProductRequest() {
    return DioHelper.getData(url: EndPoint.getProducts);
  }
}
