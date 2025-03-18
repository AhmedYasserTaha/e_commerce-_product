import 'package:e_commerce/core/utils/app_colors.dart';
import 'package:e_commerce/featured/home/widget/custom_catogry_widget.dart';
import 'package:e_commerce/featured/home/widget/custom_product.dart';
import 'package:e_commerce/featured/home/widget/list_view_separarted_product.dart';
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
        padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 15),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Use Expanded to give ListView a bounded height
            ListViewSeparartedWidget(),
            SizedBox(
              height: 15,
            ),
            Text(
              textAlign: TextAlign.start,
              "Catogrys",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w900,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            CustomCatogryWidget(),
          ],
        ),
      ),
    );
  }
}
