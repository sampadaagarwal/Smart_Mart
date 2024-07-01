import 'package:flutter/material.dart';

class ProductDetailPage extends StatelessWidget {
  final String productName;

  ProductDetailPage({required this.productName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(productName),
      ),
      body: Center(
        child: Text('Product details for $productName'),
      ),
    );
  }
}