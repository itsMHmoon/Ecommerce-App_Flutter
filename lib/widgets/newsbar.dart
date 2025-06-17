import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

import '../resources/color.dart';
import '../resources/image.dart';

class NewsBar extends StatelessWidget {
  const NewsBar({super.key});

  @override
  Widget build(BuildContext context) {
    var logger = Logger(); // Create a logger instance
    return GestureDetector(
      onTap: () {
        // Handle tap event
        logger.i('Bottom bar tapped'); // Log info message
      },
      child: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.campaign), label: 'Campaigns'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: 'Cart'),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: 'Account'),
        ],
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
      ),
    );
  }

}
