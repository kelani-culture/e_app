import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavBar extends StatelessWidget {
  int selectedIndex;
  Function(int)? changeNavBar;
  BottomNavBar(
      {super.key, required this.selectedIndex, required this.changeNavBar});

  @override
  Widget build(BuildContext context) {
    return GNav(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        selectedIndex: selectedIndex,
        onTabChange: (value) => changeNavBar!(value),
        // padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 20),
        tabBorderRadius: 5,
        gap: 8,
        tabActiveBorder: Border.all(color: Colors.black),
        tabs: const [
          GButton(
            icon: Icons.shop,
            text: 'Shop',
          ),
          GButton(
            icon: Icons.shopping_cart,
            text: 'Cart',
          ),
          GButton(icon: Icons.person, text: 'profile')
        ]);
  }
}
