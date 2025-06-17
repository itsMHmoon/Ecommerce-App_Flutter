import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../resources/color.dart';
import '../resources/image.dart';
import '../screens/test_page.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
                color: ColorManager.themeColor3,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
                borderSide: BorderSide.none,
              ),
              suffixIcon: Icon(Icons.search, color: ColorManager.darkBgColor),
            ),
          ),
        ),
        actions: [IconButton(icon: Icon(Icons.notifications_none), onPressed: () {})],
      ),
      drawer: Drawer(backgroundColor: ColorManager.themeColor3),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Electric Kettle Banner
            Container(
              margin: EdgeInsets.all(2),
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: Image.asset(ImagesString.banner1).image,
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
            ),

            // Quick Action Icons
            Padding(
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

            // Cyclone Banner
            Container(
              margin: EdgeInsets.all(8),
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: Image.asset(ImagesString.banner2).image, // replace with your asset
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
            ),

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
            SizedBox(height: 8),
            // ScrollingText(
            //     text: news[index],
            //     scrollAxis: Axis.horizontal,
            //     onFinish: () {
            //       if (index < news.length) {
            //         index++;
            //       } else {
            //         index = 0;
            //       }

            //     },
            //   ),
            SizedBox(
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

            // Shops Section (Placeholder)
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text("Shops", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
            ),
            SizedBox(
              height: 80,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _shopBox(Colors.grey),
                  _shopBox(Colors.pink),
                  _shopBox(Colors.deepPurple),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
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

  Widget _iconLabel(IconData icon, String label) {
    return Column(
      children: [
        Icon(icon, color: Colors.black),
        SizedBox(height: 4),
        Text(label, style: TextStyle(fontSize: 12)),
      ],
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

  Widget _shopBox(Color color) {
    return Container(
      width: 80,
      margin: EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(color: color, borderRadius: BorderRadius.circular(10)),
    );
  }
}
