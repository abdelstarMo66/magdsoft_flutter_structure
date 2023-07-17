part of 'home_cubit.dart';

@immutable
abstract class HomeStates {}

class HomeInitial extends HomeStates {}

class LoadingGetProductState extends HomeStates {}

class SuccessGetProductState extends HomeStates {
  final ProductsModel productsModel;

  SuccessGetProductState(this.productsModel);
}

class ErrorGetProductState extends HomeStates {
  final String error;

  ErrorGetProductState(this.error);
}
