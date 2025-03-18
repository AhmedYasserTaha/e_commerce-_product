import 'package:bloc/bloc.dart';
import 'package:e_commerce/logic/model/product_model.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'product_state.dart';

class ProductCubit extends Cubit<ProductState> {
  ProductCubit() : super(ProductInitial());
}
