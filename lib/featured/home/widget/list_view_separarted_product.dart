import 'package:e_commerce/featured/home/widget/product_container.dart';
import 'package:flutter/material.dart';

class ListViewSeparartedWidget extends StatelessWidget {
  const ListViewSeparartedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.25,
      child: ListView.separated(
        // addAutomaticKeepAlives: true,
        separatorBuilder: (context, index) => SizedBox(width: 7),
        scrollDirection: Axis.horizontal,
        itemCount: 4, // Number of items in the list
        itemBuilder: (context, index) {
          // Return the ProductContainer widget
          return ProductContainerWidget();
        },
      ),
    );
  }
}
