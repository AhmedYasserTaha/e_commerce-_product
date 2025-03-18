import 'package:e_commerce/core/api/api_service.dart';
import 'package:e_commerce/featured/home/home_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
  // ApiService();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeView(),
    );
  }
}
