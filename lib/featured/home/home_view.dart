import 'package:e_commerce/core/utils/app_colors.dart';
import 'package:e_commerce/featured/home/widget/product_container.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColors.Kappbar,
        leading: Icon(Icons.settings),
        title: Text(
          "Explor",
          style: TextStyle(fontWeight: FontWeight.w600),
          textAlign: TextAlign.center,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Column(
          children: [
            ProductContainer(),
          ],
        ),
      ),
    );
  }
}
