import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  // list of items on sale
  final List _shopItems = const [
    // [ itemName, itemPrice, imagePath, color ]
    ["Ladis Finger", "40.00", "lib/images/ladis_finger.png", Colors.green],
    ["Rice", "52.50", "lib/images/rice.png", Colors.brown],
    ["Onion", "110.80", "lib/images/onion.png", Colors.brown],
    ["Potato", "30.00", "lib/images/potato.png", Colors.blue],
    ["Banana", "60.00", "lib/images/banana.png", Colors.yellow],
  ];

  // list of cart items
  List _cartItems = [];

  get cartItems => _cartItems;

  get shopItems => _shopItems;

  // add item to cart
  void addItemToCart(int index) {
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }

  // remove item from cart
  void removeItemFromCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  // calculate total price
  String calculateTotal() {
    double totalPrice = 0;
    for (int i = 0; i < cartItems.length; i++) {
      totalPrice += double.parse(cartItems[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
  }
}
