// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_shop/components/button_nav_bar.dart';
import 'package:flutter_shop/pages/card_page.dart';
import 'package:flutter_shop/pages/profile_page.dart';
import 'package:flutter_shop/pages/shop_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {



//this selected index

int _selectedIndex = 0 ;

//this method will update out slected index
//when the user tap on the bottom bar

void navigateBottomBar(int index) {

  setState(() {
    
    _selectedIndex =  index ;
  });
}


//pages to display

final List<Widget> _Pages = [
  //shop page 
  const ShopPage(),
  //card page 

  const CardPage(),
  

  //profile page

   const ProfilePage(),


];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MyButtonNavBar(

        onTabChange: (index) => navigateBottomBar(index) ,
     
      ),
         appBar: AppBar(
          backgroundColor:  Color.fromARGB(255, 221, 116, 116),
          elevation:0 , 
          leading:Builder(
           builder: (context)=>  IconButton(icon: Padding(
             padding: const EdgeInsets.all(8.0),
             child: const Icon(Icons.menu , 
              color:Color.fromARGB(255, 77, 56, 56)),
           ),
           onPressed: () {
            Scaffold.of(context).openDrawer();
            },
          ),
          
          
          ),
          ),
          drawer: Drawer(
       backgroundColor: Color.fromARGB(255, 13, 13, 12),
       child:Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

          Column(
              children: [
              DrawerHeader(
          child: 
          Image.asset('lib/images/nikeLogo.png',color:const Color.fromARGB(255, 139, 39, 39)),
          ),
       
              //home part

         Padding(
           padding: const EdgeInsets.symmetric(horizontal:25.0),
           child: Divider(
                  color:const Color.fromARGB(255, 33, 27, 27)),
         ),

        const  Padding(
           padding:  EdgeInsets.only(left :40.0),
           child: ListTile(
           leading:Icon(Icons.home,color:Colors.white),
           title: Text("home" , style:TextStyle(color:Colors.white))
           
           ),
         ),

      //about part

        Padding(
           padding: const EdgeInsets.symmetric(horizontal:25.0),
           child: Divider(
           color:const Color.fromARGB(255, 33, 27, 27)), ),

        const  Padding(
           padding:  EdgeInsets.only(left :40.0),
           child: ListTile(
           leading:Icon(Icons.info,color:Colors.white),
           title: Text("About" , style:TextStyle(color:Colors.white))
           
           ),
         ),

              ],
           ),
          //logo
  
          //logout part
             Padding(
                padding: const EdgeInsets.symmetric(horizontal:25.0),
                child: Divider(
                 color:const Color.fromARGB(255, 33, 27, 27)),
         ),

        const  Padding(
           padding:  EdgeInsets.only(left :40.0 , bottom: 40),
           child: ListTile(
           leading:Icon(Icons.logout,color:Colors.white),
           title: Text("Logout" , style:TextStyle(color:Colors.white))
           
           ),
         ),


       ],)
         
        ),

       body: _Pages[_selectedIndex],
    );
  }
}