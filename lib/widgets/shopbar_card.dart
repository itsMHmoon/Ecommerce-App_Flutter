import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

import '../resources/color.dart';
import '../resources/image.dart';

class ShopBar1 extends StatelessWidget {
  const ShopBar1({super.key});

  @override
  Widget build(BuildContext context) {
    var logger = Logger(); // Create a logger instance
    return GestureDetector(
      onTap: () {
        // Handle tap event
        logger.i('Product bar1 tapped'); // Log info message
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          height: 80,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [_shopBox(Colors.grey), _shopBox(Colors.pink), _shopBox(Colors.deepPurple)],
          ),
        ),
      ),
    );
  }

  Widget _shopBox(Color color) {
    return Container(
      width: 80,
      margin: EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(color: color, borderRadius: BorderRadius.circular(10)),
    );
  }
}
