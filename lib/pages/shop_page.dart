// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_shop/models/cart.dart';
import 'package:flutter_shop/models/shoe.dart';
import 'package:provider/provider.dart';
// import 'package:flutter_shop/components/sho_tile.dart';

import '../components/sho_tile.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {


  void addShoeToCard (Shoe shoe) {
Provider.of<Cart>(context , listen: false).addItemToCard(shoe) ;
  
  //alert to user success add

  showDialog(context: context,
   builder: (context) => AlertDialog(
    title:Text("success add ") , 
    content : Text('check the card') ,
   ),
   );

  }
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(builder: (context , value , child) =>Column(
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 221, 214, 214),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Search",
                style: TextStyle(color: Colors.grey),
              ),
              Icon(Icons.search, color: Colors.grey),
            ],
          ),
        ),

        //message

        Padding(
          padding: const EdgeInsets.symmetric(vertical: 25),
          child: Text("someone who can write here ...",
              style: TextStyle(color: Colors.grey)),
        ),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //fixer le see more to to button
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text("Hot Picks are here ...",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 24,
                      fontWeight: FontWeight.bold)),
              Text("see more",
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 20,
                      fontWeight: FontWeight.w400)),
            ],
          ),
        ),

        const SizedBox(
          height: 20,
        ),

        Expanded(
          child: ListView.builder(

            itemCount: 4,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              //get a shoe
              Shoe shoe = value.getShoeList()[index];

              //return teh shoes
              return ShoeTile(
                shoe: shoe,
                onTap: ()=> addShoeToCard(shoe),
              );
            },
          ),
        ),

        Padding(
          padding: const EdgeInsets.only(top:25.0 , left:25 , right:25),
          child: Divider(color:Color.fromARGB(255, 34, 30, 30)),
        ),
      ],
    ),
    
     );
  }
}
