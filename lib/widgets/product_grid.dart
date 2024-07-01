import 'package:flutter/material.dart';
import 'package:ecommerce_app/pages/product_detail_page.dart';

class ProductGrid extends StatelessWidget {
  final List<Map<String, String>> products;

  ProductGrid({required this.products});

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
        childAspectRatio: 0.75,
      ),
      delegate: SliverChildBuilderDelegate(
            (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductDetailPage(
                    productName: products[index]['name']!,
                  ),
                ),
              );
            },
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Image.asset(
                    products[index]['imageUrl']!,
                    fit: BoxFit.cover,
                    height: 100,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text(
                          products[index]['name']!,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text('\$${products[index]['price']}'),
                        SizedBox(height: 8.0),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text('Add to Cart'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        childCount: products.length,
      ),
    );
  }
}