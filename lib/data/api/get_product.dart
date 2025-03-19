import 'package:dio/dio.dart';

Future<Response> getProducts() async {
  final Dio dio = Dio();
  final Response response = await dio.get("https://dummyjson.com/products");
  return response;
}
