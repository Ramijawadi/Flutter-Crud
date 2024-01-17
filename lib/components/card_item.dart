// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_shop/models/cart.dart';
import 'package:provider/provider.dart';
// import '../models/cart.dart';
import 'package:flutter_shop/models/shoe.dart';
// import 'package:provider/provider.dart';

class CartItem extends StatefulWidget {
  Shoe shoe ; 
   CartItem({super.key ,
    required this.shoe ,
    });

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {

//remove function from the card 
void removeItemFromCard() {
  // Provider.of<Cart>(context, listen: false).removeItemFromCard(widget.shoe);
  Provider.of<Cart>(context , listen:false).removeItemFromCard(widget.shoe);
}




  @override
  Widget build(BuildContext context) {
    return Container( 
      decoration: BoxDecoration(color:Colors.grey,
      borderRadius: BorderRadius.circular(8)
    ),

    margin: const EdgeInsets.only(bottom: 10),
      child: ListTile(
      leading: Image.asset(widget.shoe.imagePath),
      title :Text (widget.shoe.name) , 
      subtitle :Text( widget.shoe.description),
      trailing : IconButton(
         icon :Icon(Icons.delete) , 
      onPressed: removeItemFromCard , 
      ),
      ),
    );
  }
}