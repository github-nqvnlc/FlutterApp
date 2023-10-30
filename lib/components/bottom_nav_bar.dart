// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavbar extends StatelessWidget {
  void Function(int)? onTabChange;
  BottomNavbar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: GNav(
          color: Color.fromARGB(255, 112, 112, 112),
          activeColor: Color.fromARGB(255, 44, 72, 199),
          tabActiveBorder: Border.all(color: Colors.white),
          tabBackgroundColor: Color.fromARGB(255, 214, 235, 255),
          mainAxisAlignment: MainAxisAlignment.center,
          tabBorderRadius: 16,
          gap: 10,
          onTabChange: (value) => onTabChange!(value),
          tabs: const [
            GButton(
              icon: Icons.home,
              text: "Shop",
            ),
            GButton(
              icon: Icons.shopping_cart_rounded,
              text: "Cart",
            ),
            GButton(
              icon: Icons.account_circle_rounded,
              text: "Account",
            ),
          ]),
    );
  }
}
