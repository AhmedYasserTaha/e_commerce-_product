import 'package:e_commerce/featured/home/widget/custom_product.dart';
import 'package:flutter/material.dart';

class CustomCatogryWidget extends StatelessWidget {
  const CustomCatogryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 3),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 5,
            mainAxisSpacing: 5,
          ),
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) => CustomProduct(),
          itemCount: 10,
        ),
      ),
    );
  }
}
