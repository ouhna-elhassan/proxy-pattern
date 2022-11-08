import 'package:flutter/material.dart';
import '../items/restauMenu.dart';

class RestauPlats extends StatefulWidget {
  RestauPlats({Key? key}) : super(key: key);

  @override
  State<RestauPlats> createState() => _RestauPlatsState();
}

class _RestauPlatsState extends State<RestauPlats> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color.fromARGB(255, 58, 90, 73),//rgba(58,90,73,255)
      appBar: AppBar(
        elevation: 0,
        backgroundColor:Color.fromARGB(255, 58, 90, 73),
        leading: Icon(Icons.menu, color: Colors.black,size: 31,),
        actions: [
          Icon(Icons.person_outline, color: Colors.black,size: 31,),
          SizedBox(width: 25,),
         
        ],
      ),
      body: Padding(
        padding:EdgeInsets.only(
          left: MediaQuery.of(context).size.width*0.19,
          right: MediaQuery.of(context).size.width*0.13,
          top:  MediaQuery.of(context).size.height*0.17,
        ),
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            titleOfPage('CUSTOMIZE YOUR MENU', context),
             SizedBox(height: 55,),
            menuItem(context, 'DEJEUNER','lunch.jpg'),
            SizedBox(height: 45,),
            menuItem(context, 'DINER','dinner.jpg'),
          ],
        ),
      ) 
    );
  }
}