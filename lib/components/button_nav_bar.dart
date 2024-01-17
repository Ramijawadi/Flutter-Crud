// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyButtonNavBar extends StatelessWidget {
  void Function(int)? onTabChange ;
   MyButtonNavBar({super.key , this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.symmetric(vertical: 20),
     child :GNav(
   color:Colors.grey[400],activeColor: const Color.fromARGB(255, 59, 54, 54),
   tabActiveBorder: Border.all(color:Colors.white),
   tabBackgroundColor: Color.fromARGB(255, 224, 215, 215),
   mainAxisAlignment: MainAxisAlignment.center,
   onTabChange: (value) => onTabChange!(value) ,

      tabs: const [

          GButton(
         icon: Icons.home,
        text: 'Shop',
        ),

      
          GButton(
         icon: Icons.shopping_bag_rounded,
        text: 'Card',
        ),


     GButton(
         icon: Icons.person_2_sharp,
        text: 'Profile',
        ),


      ]
      

     
     ),

    );
  }
}