import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, size, id;
  final Color color;
  Product({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.description,
    required this.size,
    required this.color,
  });
}

List<Product> products = [
  Product(
      id: 1,
      title: "Office Code",
      price: 234,
      size: 12,
      description: "Dummy description 1",
      image: "assets/mages/handbag1.jpg",
      color: const Color(0xFF3D82AE)),
  Product(
      id: 2,
      title: "Belt Bag",
      price: 245,
      size: 8,
      description: "Dummy description 2",
      image: "assets/images/handbag2.jpg",
      color: const Color(0xFFD3A984)),
  Product(
      id: 3,
      title: "Hang Top",
      price: 243,
      size: 10,
      description: "Dummy description 3",
      image: "assets/images/handbag3.jpg",
      color: const Color(0xFF989493)),
  Product(
      id: 4,
      title: "Old Fashion",
      price: 230,
      size: 6,
      description: "Dummy description 4",
      image: "assets/images/handbag4.jpg",
      color: const Color(0x0ff98949)),
  Product(
      id: 5,
      title: "Cool Day",
      price: 240,
      size: 6,
      description: "Dummy description 5",
      image: "assets/images/handbag5.jpg",
      color: const Color(0x0ff98949)),
  Product(
      id: 6,
      title: "Mayolo",
      price: 230,
      size: 6,
      description: "Dummy description 6",
      image: "assets/images/handbag4.jpg",
      color: const Color(0x0ff98949)),
];
