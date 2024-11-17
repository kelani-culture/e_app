import 'package:ec_app/models/shoe.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier {
  List<Shoe> shoes = [
    Shoe(
        name: "Adid Badass",
        description: "Wild and beautiful shoe",
        imagePath: "lib/images/adidas_1.png",
        price: "1200"),
    Shoe(
        name: "Adid Croc",
        price: "900",
        imagePath: "lib/images/adidas_2.png",
        description:
            "Adid Croc the best Croc wear ever created it's so dhope you'll never wanna pull it off aswear"),
    Shoe(
        name: "Adid Asim",
        description:
            "top notch adias shoe mostly worn by kobe bryant and muhammed ali",
        price: "3000",
        imagePath: "lib/images/adidas_3.png"),
    Shoe(
        name: "Adid Apex",
        price: "800",
        imagePath: "lib/images/adidas_4.png",
        description:
            "Looking at the texture it's worth the price top notch even lil wayne cannot deny it's beauty"),
    Shoe(
        name: "Adid boylt",
        price: "100",
        imagePath: "lib/images/adidas_6.png",
        description: "ugly/ass shoe")
  ];

  List<Shoe> userCart = [];

  List<Shoe> getAllShoes() {
    return shoes;
  }

  // add to cart
  void addToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  // get user cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  // remove from cart
  void removeItemCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
