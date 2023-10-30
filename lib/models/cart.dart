import 'package:ecommerce_app/models/shoe.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier {
  // list of shoe for Sale
  List<Shoe> shoeShop = [
    Shoe(
      name: "Air Force 1",
      category: "Men's Shoes",
      price: "2,929,000",
      imagePath: "lib/images/air_force_1.png",
    ),
    Shoe(
      name: "Air Jordan Green",
      category: "Men's Shoes",
      price: "4,259,000",
      imagePath: "lib/images/air_jordan_green.png",
    ),
    Shoe(
      name: "Air Jordan Mid",
      category: "Men's Shoes",
      price: "3,669,000",
      imagePath: "lib/images/air_jordan.png",
    ),
    Shoe(
      name: "Jordan Stay Loyal",
      category: "Men's Shoes",
      price: "4,639,000",
      imagePath: "lib/images/jordan_stay_loyal.png",
    ),
    Shoe(
      name: "Jumpman MVP",
      category: "Men's Shoes",
      price: "5,989,000",
      imagePath: "lib/images/Jumpman_MVP_2.png",
    ),
    Shoe(
      name: "Jumpman MVP Extra",
      category: "Men's Shoes",
      price: "5,689,000",
      imagePath: "lib/images/Jumpman_MVP.png",
    ),
    Shoe(
      name: "Jumpman MVP Black",
      category: "Men's Shoes",
      price: "5,389,000",
      imagePath: "lib/images/Jumpman-MVP.png",
    ),
    Shoe(
      name: "Jordan Luka",
      category: "Men's Shoes",
      price: "5,389,000",
      imagePath: "lib/images/Luka_PF.png",
    ),
  ];
  // list of item in user cart

  List<Shoe> userCart = [];

  // get list of shoes for sale

  List<Shoe> getShoeList() {
    return shoeShop;
  }

  // get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  // add to cart
  void addToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  // remove from cart
  void removeFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
