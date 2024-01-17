

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '../models/shoe.dart';

class ShoeTile extends StatelessWidget {
  void Function()? onTap ;
  Shoe shoe ; 

   ShoeTile({super.key ,  required this.shoe  , required this.onTap , });

  @override
  Widget build(BuildContext context) {
    return 

        Container(
         margin: const  EdgeInsets.all(40),
         width: 200,
         decoration: BoxDecoration(
         color:Color.fromARGB(255, 213, 179, 179) , 
         borderRadius: BorderRadius.circular(10),
      ),

      child:Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,

       children: [
        //shoe picture
          ClipRRect(
             borderRadius: BorderRadius.circular(15),
            child: Image.asset(shoe.imagePath)),
        

          //description
            Padding(
              padding: const EdgeInsets.symmetric(horizontal :25),
              child: Text(shoe.description , style :TextStyle(color:Colors.black)),
            ),


          //price + detail

Padding(
  padding: const EdgeInsets.only(left:10),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
     Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //name 
          Text(shoe.name , style:TextStyle(
         fontSize: 15 , 
         fontWeight: FontWeight.bold
        )),
        //price 
  
        const SizedBox(height : 5),
        Text( '\$' + shoe.price , style:TextStyle(color:const Color.fromARGB(255, 68, 62, 62))),
      
      ],
     ),
  
  
     //plus button 
  
  GestureDetector(
    onTap:onTap ,

    child: Container(
    padding:  const EdgeInsets.all(20),
    decoration: const  BoxDecoration( 
    color:Colors.black ,
    borderRadius: BorderRadius.only(
    
      topLeft: Radius.circular(10) , 
      bottomRight: Radius.circular(10)
    ) ,
    
    ),
       child: const Icon(Icons.add,
       color: Colors.white),
    
    
    ),
  )
  
  ],),
)
          //button to add to card 
           ],
      ),
     );
  }
}