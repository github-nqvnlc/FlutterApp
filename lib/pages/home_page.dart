// ignore_for_file: prefer_const_constructors, unused_field, unnecessary_const

import 'package:ecommerce_app/components/bottom_nav_bar.dart';
import 'package:ecommerce_app/pages/cart_page.dart';
import 'package:ecommerce_app/pages/profile_page.dart';
import 'package:ecommerce_app/pages/shop_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // set index selected
  int _selectedIndex = 0;

  // Method to update selected index
  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // page to display
  final List<Widget> _pages = [
    // Shop
    const ShopPage(),
    // Cart
    const CartPage(),
    // Profile
    const Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavbar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
          builder: (context) => IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: const Icon(
                Icons.menu,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  DrawerHeader(
                    child: Image.asset(
                      'lib/images/logo.png',
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20.0,
                    ),
                    child: Divider(
                      color: Colors.grey.shade700,
                    ),
                  ),
                  const Column(
                    children: [
                      const Padding(
                        padding: const EdgeInsets.only(left: 24.0),
                        child: ListTile(
                          leading: Icon(
                            Icons.home,
                            color: Colors.white,
                          ),
                          title: Text("Home"),
                          textColor: Colors.white,
                        ),
                      ),
                      const Padding(
                        padding: const EdgeInsets.only(left: 24.0),
                        child: ListTile(
                          leading: Icon(
                            Icons.info,
                            color: Colors.white,
                          ),
                          title: Text("About"),
                          textColor: Colors.white,
                        ),
                      ),
                      const Padding(
                        padding: const EdgeInsets.only(left: 24.0),
                        child: ListTile(
                          leading: Icon(
                            Icons.phone,
                            color: Colors.white,
                          ),
                          title: Text("Contact"),
                          textColor: Colors.white,
                        ),
                      ),
                      const Padding(
                        padding: const EdgeInsets.only(left: 24.0),
                        child: ListTile(
                          leading: Icon(
                            Icons.settings,
                            color: Colors.white,
                          ),
                          title: Text("Settings"),
                          textColor: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const Padding(
                padding: const EdgeInsets.only(left: 24.0, bottom: 24.0),
                child: ListTile(
                  leading: Icon(
                    Icons.logout,
                    color: Colors.white,
                  ),
                  title: Text("Logout"),
                  textColor: Colors.white,
                ),
              ),
            ]),
      ),
      backgroundColor: Colors.grey.shade300,
      body: _pages[_selectedIndex],
    );
  }
}
