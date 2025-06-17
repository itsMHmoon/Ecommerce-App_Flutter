import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

import '../resources/color.dart';
import '../resources/image.dart';

class ProductBar1 extends StatelessWidget {
  const ProductBar1({super.key});

  @override
  Widget build(BuildContext context) {
    var logger = Logger(); // Create a logger instance
    return GestureDetector(
      onTap: () {
        // Handle tap event
        logger.i('Product bar1 tapped'); // Log info message
      },
      child: SizedBox(
              height: 250,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _productCard('Viomi V2 Pro', 'Viomi A2', '৳ 59,990', '৳ 39,999', 'Only 10 pcs'),
                  _productCard('Osaka 4k', 'Osaka 4k', '৳ 46,500', '৳ 24,899', 'Only 100 pcs'),
                  _productCard('SAFE-E18K', 'Osaka 4k', '৳ 77,100', '৳ 47,999', 'Only 240 pcs'),
                ],
              ),
            ),
    );
  }

    Widget _productCard(String image, String title, String oldPrice, String newPrice, String stock) {
    return Container(
      width: 160,
      margin: EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [BoxShadow(color: Colors.grey.shade300, blurRadius: 5)],
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(height: 100, color: Colors.grey.shade200), // Image placeholder
            SizedBox(height: 8),
            Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
            Text(oldPrice, style: TextStyle(decoration: TextDecoration.lineThrough)),
            Text(newPrice, style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold)),
            SizedBox(height: 4),
            Text(stock, style: TextStyle(fontSize: 12, color: Colors.pink)),
          ],
        ),
      ),
    );
  }
  
}
