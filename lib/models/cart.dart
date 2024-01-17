import 'package:flutter/material.dart';
import 'package:flutter_shop/models/shoe.dart';

class Cart extends ChangeNotifier {
//list of shoes for sale
  List<Shoe> shoesShop = [
    Shoe(
      name: "Rami jawadi",
      price: "100",
      imagePath: 'lib/images/nike44.png',
      description: "good quality",
    ),
    Shoe(
      name: "nike jordan",
      price: "100",
      imagePath: 'lib/images/nike44.png',
      description: "good quality",
    ),
    Shoe(
      name: "hello adidas ",
      price: "100",
      imagePath: 'lib/images/nike44.png',
      description: "good quality",
    ),
    Shoe(
      name: "nike jordan",
      price: "100",
      imagePath: 'lib/images/nike44.png',
      description: "good quality",
    ),
  ];
//list of items in the user card
  List<Shoe> userCard = [];

//get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoesShop;
  }

//get card
  List<Shoe> getUserCard() {
    return userCard;
  }

//add items to card
  void addItemToCard(Shoe shoe) {
    userCard.add(shoe);

    notifyListeners();
  }
//remove item

  void removeItemFromCard(Shoe shoe) {
    userCard.remove(shoe);
    notifyListeners();
  }
}
