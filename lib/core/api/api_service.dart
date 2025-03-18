import 'dart:developer';

import 'package:dio/dio.dart';

// // ignore: non_constant_identifier_names
// ApiService() async {
//   final Dio dio = Dio();
//   final Response response = await dio.get('https://dummyjson.com/products');
//   final dynamic data = response.data;
//   // log(response.toString());
// }


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