import 'package:e_commerce/screens/home/home_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(ECommrece());
}

class ECommrece extends StatelessWidget {
  const ECommrece({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeView(),
    );
  }
}
