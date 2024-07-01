import 'package:flutter/material.dart';
import '../widgets/banner_slider.dart';
import '../widgets/categories_section.dart';
import '../widgets/product_grid.dart';

class HomePageContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: BannerSlider(
              imageUrls: [
                'assets/images/banner1.jpg',
                'assets/images/banner2.jpg',
                'assets/images/banner3.jpg',
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: CategoriesSection(
              categories: ['Fruits', 'Vegetables', 'Snacks'],
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.all(8.0),
            sliver: ProductGrid(
              products: [
                {
                  'name': 'Apple',
                  'price': '1.99',
                  'imageUrl': 'assets/images/apple.jpg',
                },
                {
                  'name': 'Banana',
                  'price': '0.99',
                  'imageUrl': 'assets/images/banana.jpg',
                },
                {
                  'name': 'Tomato',
                  'price': '2.00',
                  'imageUrl': 'assets/images/tomato.jpg',
                },
                {
                  'name': 'Onion',
                  'price': '1.55',
                  'imageUrl': 'assets/images/onion.jpg',
                },
                {
                  'name': 'Raj Kachori',
                  'price': '2.55',
                  'imageUrl': 'assets/images/banner3.jpg',
                },
                // Add more products here
              ],
            ),
          ),
        ],
      ),
    );
  }
}