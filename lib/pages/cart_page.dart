// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import, unnecessary_const, body_might_complete_normally_nullable, unused_local_variable

import 'package:ecommerce_app/components/cart_item.dart';
import 'package:ecommerce_app/models/shoe.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/cart.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "My Cart",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                  itemCount: value.getUserCart().length,
                  itemBuilder: (context, index) {
                    Shoe individualShoe = value.getUserCart()[index];

                    return CartItem(
                      shoe: individualShoe,
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
