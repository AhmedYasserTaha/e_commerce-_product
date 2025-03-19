import 'dart:ffi';

import 'package:dio/dio.dart';
import 'package:e_commerce/data/api/get_product.dart';
import 'package:e_commerce/screens/home/product_card.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: FutureBuilder(
        future: getProducts(),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else {
            Response response = snapshot.data;
            final dynamic data = response.data;
            List products = data['products'];
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 15),
              child: Column(
                children: [
                  SizedBox(height: 15),
                  Expanded(
                    child: GridView.builder(
                        itemCount: products.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 5,
                            mainAxisExtent: 220,
                            mainAxisSpacing: 5),
                        itemBuilder: (context, index) {
                          return ProductCard(
                            productMap: products[index],
                          );
                        }),
                  ),
                ],
              ),
            );
          }
        },
      ),
    );
  }
}
