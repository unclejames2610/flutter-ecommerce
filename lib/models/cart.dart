import 'package:ecommerce_app/models/shoe.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier {
  List<Shoe> shoeShop = [
    Shoe(
      name: 'Shoe 1',
      price: '236',
      description: 'shoe 1 description',
      imagePath: 'lib/images/shoe1.jpg',
    ),
    Shoe(
      name: 'Shoe 2',
      price: '214',
      description: 'shoe 2 description',
      imagePath: 'lib/images/shoe2.jpg',
    ),
    Shoe(
      name: 'Shoe 3',
      price: '249',
      description: 'shoe 3 description',
      imagePath: 'lib/images/shoe3.png',
    ),
    Shoe(
      name: 'Shoe 5',
      price: '320',
      description: 'shoe 5 description',
      imagePath: 'lib/images/shoe5.png',
    ),
  ];

  // list of items in cart
  List<Shoe> userCart = [];

  // get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  // get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  // add items to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  // remove item from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
