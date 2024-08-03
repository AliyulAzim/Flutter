import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Container(
        child: GNav(
          color: Colors.grey[900],
          activeColor: Colors.grey[700],
          tabActiveBorder: Border.all(color: Colors.white),
          tabBackgroundColor: Colors.grey.shade100,
          mainAxisAlignment: MainAxisAlignment.center,
          tabBorderRadius: 20,
          tabs: const [
           GButton(icon: Icons.home, text: 'Home',
           ),
           GButton(icon: Icons.shopping_cart, text: 'Cart',
           )
        ],
        ),
      ),
    );
  }
}