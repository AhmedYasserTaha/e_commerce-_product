import 'package:e_commerce/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class ProductContainer extends StatelessWidget {
  const ProductContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
          // Use Expanded to allow the Column to take remaining space
          Expanded(
            child: Column(
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
                    backgroundColor: Colors.white, // Button background color
                    foregroundColor: Colors.orangeAccent, // Text color
                    padding: EdgeInsets.symmetric(
                        horizontal: 30, vertical: 10), // Button padding
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(20), // Rounded button corners
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
          ),
          // Image on the right side
          Image.asset(
            "images/1.png", // Ensure this path is correct
            height: 150, // Adjust height as needed
            width: 150, // Adjust width as needed
            fit: BoxFit.cover, // Ensure the image fits properly
          ),
        ],
      ),
    );
  }
}
