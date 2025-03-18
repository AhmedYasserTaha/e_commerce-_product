part of 'product_cubit.dart';

@immutable
sealed class ProductState {}

final class ProductInitial extends ProductState {}

final class ProductSuccess extends ProductState {
  final List<ProductModel> prodacts;

  ProductSuccess({required this.prodacts});
}

final class ProductLoading extends ProductState {}

final class ProductFaliure extends ProductState {
  final String errMessage;

  ProductFaliure({required this.errMessage});
}
