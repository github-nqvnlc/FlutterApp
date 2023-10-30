// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:ecommerce_app/pages/home_page.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Image.asset(
                  'lib/images/logo.png',
                  height: 240,
                ),
              ),
              const SizedBox(
                height: 48,
              ),
              const Text(
                "Just do it",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Text(
                  "ALL MOVEMENT, ALL MOMENTS",
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 15,
                      color: Colors.grey[200]),
                  textAlign: TextAlign.center,
                ),
              ),
              GestureDetector(
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage())),
                child: Padding(
                  padding: const EdgeInsets.only(top: 35.0),
                  child: Container(
                    child: Center(
                      child: const Text(
                        "Shop Now",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    padding: EdgeInsets.all(25),
                    decoration: BoxDecoration(
                        color: Colors.black87,
                        borderRadius: BorderRadius.circular(18)),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
