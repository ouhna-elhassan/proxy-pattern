import 'package:flutter/material.dart';


Container titleOfPage(String title, BuildContext context){
  return Container(
    width: MediaQuery.of(context).size.width*0.7,
    height:55,
    decoration: BoxDecoration(
      color:const Color.fromARGB(255, 211, 167, 32),
      borderRadius: BorderRadius.circular(15),
    ),
    child: Center(
      child: Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18
        ),
      ),
    ),
  );
}

Stack menuItem(BuildContext context, String title, String img){
  return Stack(
    clipBehavior: Clip.none,
    children: [
      Container(
        width: MediaQuery.of(context).size.width*0.6,
        height:55, //MediaQuery.of(context).size.height*0.6,
        margin: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.1,),
        padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.1,),
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: TextStyle(
                color: Color.fromARGB(255, 28, 99, 30),
                fontWeight: FontWeight.bold,
                fontSize: 18
              ),
            ),   
          ],
        ),
      ),
      Positioned(
        child: CircleAvatar(
          backgroundImage: AssetImage(img),
          radius: 41,
        ),
       //left: 0,
       right: MediaQuery.of(context).size.width*0.51,
       bottom: -17,
      )
    ],
  );
}