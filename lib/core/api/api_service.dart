// import 'package:api_test/data/model/product_model.dart';
// import 'package:bloc/bloc.dart';
// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';

// part 'product_state.dart';

// class ProductCubit extends Cubit<ProductState> {
//   ProductCubit() : super(ProductInitial());
//   ApiService() async {
//     final Dio dio = Dio();
//     final Response response = await dio.get("https://dummyjson.com/products");
//     final dynamic data = response.data;
//     List<ProductModel> prodact = [];
//     for (var prodactMap in data['products']) {
//       prodact.add(ProductModel.formMap(prodactMap));
//     }
//     emit(ProductSuccess(
//         products: prodact)); // log(response.statusCode.toString());
//   }
// }

import 'dart:developer';

import 'package:dio/dio.dart';

ApiService() async {
  final Dio dio = Dio();
  final Response response = await dio.get('https://dummyjson.com/products');
  final dynamic data = response.data;
  log(response.toString());
}
