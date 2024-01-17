import 'package:flutter/material.dart';
import 'package:flutter_shop/components/card_item.dart';
import 'package:flutter_shop/models/cart.dart';
import 'package:flutter_shop/models/shoe.dart';
import 'package:provider/provider.dart';

class CardPage extends StatefulWidget {
  const CardPage({super.key});

  @override
  State<CardPage> createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(builder : (context , value ,child ) =>
      Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
      const  Text('this is my cart' , 
      style :TextStyle(color:Colors.grey , fontWeight: FontWeight.bold , fontSize: 20) ),
      

      const SizedBox(height: 30),

      Expanded(child: ListView.builder
      (
        itemCount: value.getUserCard().length,
        
        itemBuilder: (context  , index) {

 //get individaul shoe

 Shoe individualShoe = value.getUserCard()[index];

 //return the card items

 return  CartItem(shoe: individualShoe) ; 
      },

      
      
      ))
      
      
      
      ],),
    ) )
    
    ;
  }
}