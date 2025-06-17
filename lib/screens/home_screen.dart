

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:scrolling_text/scrolling_text.dart';

import '../resources/color.dart';
import '../screens/test_page.dart';
import '../widgets/bottom_navbar.dart';
import '../widgets/dshbrd_bnr_card.dart';
import '../widgets/hero_section.dart';
import '../widgets/actionbar_card.dart';
import '../widgets/newsbar.dart';
import '../widgets/shopbar_card.dart';
import '../widgets/product_wdgt.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: ColorManager.noColor, // Transparent status bar
        // statusBarBrightness: Brightness.dark, // For iOS (light status bar)
        // statusBarIconBrightness: Brightness.dark, // For Android (dark icons)
        systemNavigationBarColor: ColorManager.darkBgColor, // Navigation bar color
        systemNavigationBarIconBrightness: Brightness.light, // Navigation bar icons color
        systemStatusBarContrastEnforced: true,
      ),
    );

    return Scaffold(
      backgroundColor: ColorManager.lightBgColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: ColorManager.lightBgColor,
        iconTheme: IconThemeData(color: ColorManager.darkBgColor),
        title: SizedBox(
          height: 40,
          child: TextField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              filled: true,
              fillColor: ColorManager.themeColor6,
              hintText: 'What would you like to buy?',
              hintStyle: TextStyle(
                fontFamily: 'OpenSans',
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: ColorManager.themeColor3,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
                borderSide: BorderSide.none,
              ),
              suffixIcon: Icon(Icons.search, color: ColorManager.darkBgColor, size: 20),
            ),
          ),
        ),
        actions: [IconButton(icon: Icon(Icons.notifications_none, size: 25), onPressed: () {})],
      ),
      drawer: Drawer(backgroundColor: ColorManager.themeColor3),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Electric Kettle Banner
            HeroSection(),

            QuickActionBar(),

            DashBanner(),

            SizedBox(height: 5),

            // Products Section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Products", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                  Text("Show All", style: TextStyle(color: Colors.blue)),
                ],
              ),
            ),

            NewsBar(),

            ProductBar1(),

            // Shops Section (Placeholder)
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text("Shops", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
            ),
            ShopBar1(),
          ],
        ),
      ),
      bottomNavigationBar: BottomBar(),
    );
  }
}
