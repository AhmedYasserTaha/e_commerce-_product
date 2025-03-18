import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:e_commerce/logic/model/product_model.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'product_state.dart';

class ProductCubit extends Cubit<ProductState> {
  ProductCubit() : super(ProductInitial());
  ApiService() async {
    final Dio dio = Dio();
    final Response response = await dio.get('https://dummyjson.com/products');
    final dynamic data = response.data;
    List<ProductModel> prodacts = [ ] ;
    for (var Productjson in data["products"]) {
      prodacts.add(ProductModel.formJson(Productjson));
    }
    emit(ProductSuccess(prodacts: prodacts));
    // log(response.toString());
  }
}
