import 'package:e_commerce/utils/style.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key, this.productMap});
  final dynamic productMap;
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
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.network(
            productMap['thumbnail'],
            height: 100,
            width: 100,
          ),
          Text(
            textAlign: TextAlign.center,
            maxLines: 2,
            productMap['title'],
            style: Styles.textStyle16,
          ),
          Text(
            textAlign: TextAlign.center,
            maxLines: 2,
            productMap['category'],
            style: Styles.textStyle14,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
            child: Row(
              children: [
                Text(
                  productMap['price'].toString(),
                  style: Styles.textStyle16.copyWith(
                    color: Colors.green,
                  ),
                ),
                Spacer(),
                Icon(
                  Icons.star,
                  color: Colors.amberAccent,
                ),
                SizedBox(width: 5),
                Text(productMap['rating'].toString(),
                    style: Styles.textStyle16),
              ],
            ),
          )
        ],
      ),
    );
  }
}
