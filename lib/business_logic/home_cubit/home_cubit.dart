import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:magdsoft_flutter_structure/data/models/product_model.dart';
import 'package:magdsoft_flutter_structure/data/network/responses/home_response.dart';
import 'package:meta/meta.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeStates> {
  HomeCubit() : super(HomeInitial());

  static HomeCubit get(context) => BlocProvider.of(context);

  late List<Products>? allProducts;
  late List<Products>? acerProducts = [];
  late List<Products>? razerProducts= [];
  late List<Products>? appleProducts= [];

  void getAllProducts() {
    emit(LoadingGetProductState());
    HomeResponse.getProductResponse().then((value) {
      allProducts = value.products;
      for (var element in value.products!) {
        if (element.company == "Acer") {
          acerProducts!.add(element);
        } else if (element.company == "Razer") {
          razerProducts!.add(element);
        } else if (element.company == "Apple") {
          appleProducts!.add(element);
        }
      }
      emit(SuccessGetProductState(value));
    }).catchError((e) {
      print(e.toString());
      emit(ErrorGetProductState(e.toString()));
    });
  }
}
