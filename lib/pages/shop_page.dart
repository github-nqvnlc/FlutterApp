// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_local_variable

import 'package:ecommerce_app/components/shoe_tile.dart';
import 'package:ecommerce_app/models/cart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/shoe.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  void addShoeToCart(Shoe shoe) {
    Provider.of<Cart>(context, listen: false).addToCart(shoe);

    // Alert the user, shoe successfully added to cart
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text("Successfuly added to cart!"),
              content: Text("Check your cart."),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Column(
        children: [
          // Search bar
          Container(
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(20)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Search",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
              ],
            ),
          ),

          // message
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Text(
              "Someone flies..., some fly longer than others...",
              style: TextStyle(color: Colors.grey.shade400),
            ),
          ),

          // Hot pick
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 24.0, vertical: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "Hot Pick",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Text(
                    "See more",
                    style: TextStyle(
                      color: Colors.blue.shade400,
                      fontWeight: FontWeight.w300,
                      fontSize: 14,
                    ),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(
            height: 10,
          ),

          Expanded(
            child: ListView.builder(
                itemCount: value.getShoeList().length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  Shoe shoe = value.getShoeList()[index];
                  return ShoeTile(
                    shoe: shoe,
                    onTap: () => addShoeToCart(shoe),
                  );
                }),
          ),

          const Padding(
            padding: EdgeInsets.all(4.0),
            child: Divider(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
