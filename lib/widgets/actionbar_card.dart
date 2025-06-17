import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

import '../resources/color.dart';
import '../resources/image.dart';

class QuickActionBar extends StatelessWidget {
  const QuickActionBar({super.key});

  @override
  Widget build(BuildContext context) {
    var logger = Logger(); // Create a logger instance
    return GestureDetector(
      onTap: () {
        // Handle tap event
        logger.i('Navigation bar tapped'); // Log info message
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _iconLabel(Icons.help_outline, 'FAQ'),
              _iconLabel(Icons.favorite_border, 'Wish List'),
              _iconLabel(Icons.assignment_return, 'Return Policy'),
              _iconLabel(Icons.category, 'Categories'),
              _iconLabel(Icons.receipt_long, 'Orders'),
            ],
          ),
        ),
      ),
    );
  }

  Widget _iconLabel(IconData icon, String label) {
    return Column(
      children: [
        Icon(icon, color: Colors.black),
        SizedBox(height: 4),
        Text(label, style: TextStyle(fontSize: 12)),
      ],
    );
  }
}
