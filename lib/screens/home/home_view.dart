import 'package:e_commerce/data/api/get_product.dart';
import 'package:e_commerce/utils/style.dart';
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
                          // childAspectRatio: .8,
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

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: MediaQuery.of(context).size.width * .5,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.brown,
      ),
      child: Column(
        children: [
          Image.asset(
            "images/1.png",
            height: 100,
            width: 100,
          ),
          Text(
            "title",
            style: Styles.textStyle18,
          ),
          Text(
            "prand",
            style: Styles.textStyle18,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                Text(
                  "price",
                  style: Styles.textStyle18,
                ),
                Spacer(),
                Icon(
                  Icons.star,
                  color: Colors.amberAccent,
                ),
                SizedBox(width: 5),
                Text(
                  "rating",
                  style: Styles.textStyle18,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
