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
        future: getProduct(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 15),
              child: Column(
                children: [
                  SizedBox(height: 15),
                  GridView.builder(
                      itemCount: 10,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 5,
                          mainAxisExtent: 220,
                          mainAxisSpacing: 5),
                      itemBuilder: (context, index) {
                        return ProductCard();
                      }),
                ],
              ),
            );
          }
        },
      ),
    );
  }
}
