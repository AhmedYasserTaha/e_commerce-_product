import 'package:e_commerce/core/utils/app_colors.dart';
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
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: AppColors.kblue,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      // Discount Text
                      Text(
                        'Flat 50% discount on\nyour first order.',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.start,
                      ),
                      SizedBox(height: 20),
                      // Buy Now Button
                      ElevatedButton(
                        onPressed: () {
                          print('Buy Now clicked');
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              Colors.white, // Button background color
                          foregroundColor: Colors.orangeAccent, // Text color
                          padding: EdgeInsets.symmetric(
                              horizontal: 30, vertical: 10), // Button padding
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                20), // Rounded button corners
                          ),
                        ),
                        child: Text(
                          'Buy Now',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Image.asset("images/1.png")
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
