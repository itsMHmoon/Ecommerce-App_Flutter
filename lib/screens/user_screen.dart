import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../resources/color.dart';
import '../resources/image.dart';
import '../screens/test_page.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: ColorManager.noColor, // Transparent status bar
        statusBarBrightness: Brightness.dark, // For iOS (light status bar)
        statusBarIconBrightness: Brightness.dark, // For Android (dark icons)
        systemNavigationBarColor: ColorManager.darkBgColor, // Navigation bar color
        systemNavigationBarIconBrightness: Brightness.light, // Navigation bar icons color
        systemStatusBarContrastEnforced: true,
      ),
    );
    return Scaffold(
      appBar: AppBar(title: Text('Cart', style: TextStyle(color: ColorManager.darkBgColor)),
        backgroundColor: ColorManager.lightBgColor,
        iconTheme: IconThemeData(color: ColorManager.darkBgColor),
        actions: [IconButton(icon: Icon(Icons.notifications_none), onPressed: () {})],
      ),
      body: Center(child: Text('Under Maintenance!')),
    );
  }
}
