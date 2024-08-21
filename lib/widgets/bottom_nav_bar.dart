import 'package:flutter/material.dart';
import 'package:jewels/screens/ar_try_on_screen.dart';
import 'package:jewels/screens/home_screen.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:jewels/screens/product_details_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  BottomNavBarState createState() => BottomNavBarState();
}

class BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;
  final List<Widget> _screens = [
    const HomeScreen(),
    ProductDetailsScreen(),
    ArTryOnScreen(),
    const Text('Cart'),
    const Text('Profile'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _screens[_selectedIndex],
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8.0),
        child: GNav(
          gap: 8,
          activeColor: Colors.white,
          color: Colors.black,
          backgroundColor: Colors.white,
          tabBackgroundColor: Colors.black,
          padding: const EdgeInsets.all(8),
          onTabChange: (index) => _onItemTapped(index),
          selectedIndex: _selectedIndex,
          tabs: const [
            GButton(
              icon: Icons.home,
              text: 'Home',
            ),
            GButton(
              icon: Icons.search,
              text: 'Search',
            ),
            GButton(
              icon: Icons.camera,
              text: 'Try On',
            ),
            GButton(
              icon: Icons.shopping_cart,
              text: 'Cart',
            ),
            GButton(
              icon: Icons.person,
              text: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
