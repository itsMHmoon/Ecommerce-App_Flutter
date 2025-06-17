import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

import '../resources/color.dart';
import '../resources/image.dart';

class DashBanner extends StatelessWidget {
  const DashBanner({super.key});

  @override
  Widget build(BuildContext context) {
    var logger = Logger(); // Create a logger instance
    return GestureDetector(
      onTap: () {
        // Handle tap event
        logger.i('Banner tapped'); // Log info message
      },
      child: Container(
        margin: EdgeInsets.all(10),
        height: 200,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: Image.asset(ImagesString.bannerx).image,
            fit: BoxFit.cover,
            onError: (exception, stackTrace) {
              logger.e('Error loading image: $exception'); // Log error message
            },
          ),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
