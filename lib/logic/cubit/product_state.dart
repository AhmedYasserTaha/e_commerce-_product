part of 'product_cubit.dart';

@immutable
sealed class ProductState {}

final class ProductInitial extends ProductState {}

final class ProductLoading extends ProductState {}

final class ProductSuccess extends ProductState {}

final class ProductFaliure extends ProductState {
  final String errorMessage;

  ProductFaliure({required this.errorMessage});
}
