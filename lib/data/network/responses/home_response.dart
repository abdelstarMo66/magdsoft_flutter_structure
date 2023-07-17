import 'package:magdsoft_flutter_structure/data/models/product_model.dart';
import 'package:magdsoft_flutter_structure/data/network/requests/home_request.dart';

class HomeResponse {
  static Future<ProductsModel> getProductResponse() async {
    final response = await HomeRequest.getProductRequest();
    return ProductsModel.fromJson(response.data);
  }
}
