import 'package:flutter/material.dart';

class ProductModel {
  final int id;
  final String title;
  final String description;
  final String category;
  final double price;
  final double rating;
  final String brand;
  final String thumbnail;

  ProductModel(
      {required this.id,
      required this.title,
      required this.description,
      required this.category,
      required this.price,
      required this.rating,
      required this.brand,
      required this.thumbnail});

  factory ProductModel.formJson(Map<String, dynamic> json) {
    return ProductModel(
        id: json['id'],
        brand: json['brand'] ?? "",
        category: json['category'],
        description: json['description'],
        price: json['price'],
        rating: json['rating'],
        thumbnail: json['thumbnail'],
        title: json['title']);
  }
}
