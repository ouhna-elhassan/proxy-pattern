import 'dart:ui';

import 'package:flutter/material.dart';

class Psych extends StatefulWidget {
  Psych({Key? key}) : super(key: key);

  @override
  State<Psych> createState() => _PsychState();
}

class _PsychState extends State<Psych> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:const IconButton(
          onPressed: null,
          icon: Icon(Icons.keyboard_arrow_left_sharp,color: Colors.white,size: 35,)
        ),
        title:const Text(
          "Psychologist"
        ),
        centerTitle: true,
        actions:const [
         IconButton(
          onPressed: null,
          icon: Icon(Icons.menu,color: Colors.white,size: 35,)
        ),
        
        ],
        elevation: 0,
        backgroundColor:const Color.fromARGB(255, 85, 185, 162),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height*0.25,
                  width: MediaQuery.of(context).size.width*1,
                  color:const Color.fromARGB(255, 85, 185, 162),
                ),
                Positioned(
                  //right: 0,
                  left: MediaQuery.of(context).size.width*0.2,
                  bottom: -65,
                  child:Container(
                    width: MediaQuery.of(context).size.width*0.6,
                    height: MediaQuery.of(context).size.height*0.3,
                    decoration: BoxDecoration(
                      boxShadow:const [
                        BoxShadow(
                          color: Color.fromARGB(255, 177, 197, 178),
                          blurRadius: 7,
                          offset: Offset(3, 5)
                        )
                      ],
                      borderRadius: BorderRadius.circular(19),
                      image: const DecorationImage(
                        image:ExactAssetImage('assets/doct2.jpg'),
                        fit: BoxFit.cover  
                      ),
                    ),
                  )
                  )
              ],
            ),
            const SizedBox(height: 85),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Dr, Ouhna Elhassan',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 139, 133, 103)
                  ),
                ),
              const SizedBox(height: 1),
                const Text(
                  'active',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 97, 150, 121)
                  ),
                ),
               const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      child: IconButton(
                        onPressed: null,
                        icon: Icon(
                          Icons.call,
                          color: Color.fromARGB(255, 76, 175, 158),
                          )
                        ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        //border: Border.all(color: Colors.green,width: 2),
                        boxShadow:const [
                        BoxShadow(
                          color: Color.fromARGB(255, 227, 227, 227),
                          blurRadius: 7,
                          offset: Offset(9, 3)
                        )
                      ],
                      ),
                    ),
                    const SizedBox(width: 30),
                    Container(
                      width: 50,
                      height: 50,
                      child: IconButton(
                        onPressed: null,
                        icon: Icon(
                          Icons.video_call_outlined,
                          color: Color.fromARGB(255, 76, 175, 158),
                          )
                        ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        //border: Border.all(color: Colors.green,width: 2),
                        boxShadow:const [
                        BoxShadow(
                          color: Color.fromARGB(255, 227, 227, 227),
                          blurRadius: 7,
                          offset: Offset(9, 3)
                        )
                      ],
                      ),
                    ),
                    const SizedBox(width: 30),
                    Container(
                      width: 50,
                      height: 50,
                      child: IconButton(
                        onPressed: null,
                        icon: Icon(
                          Icons.message_outlined,
                          color: Color.fromARGB(255, 76, 175, 158),
                          )
                        ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        //border: Border.all(color: Colors.green,width: 2),
                        boxShadow:const [
                        BoxShadow(
                          color: Color.fromARGB(255, 227, 227, 227),
                          blurRadius: 9,
                          offset: Offset(9, 3)
                        )
                      ],
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 25),
                 Container(
                      padding: EdgeInsets.only(left: 3,right:3),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                          'Calendar',
                          style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 97, 150, 121)
                        ),
                        ),
                          Icon(
                          Icons.arrow_forward_ios,
                          color: Color.fromARGB(255, 76, 175, 158),
                          )
                        ],
                      ),
                      width: MediaQuery.of(context).size.width*0.6,
                      height: MediaQuery.of(context).size.height*0.05,
                      decoration: BoxDecoration(
                        //color: Colors.white,
                        borderRadius: BorderRadius.circular(11),
                        border: Border.all(color: Color.fromARGB(255, 218, 218, 218),width: 1),
                        
                      ),
                ),
               const SizedBox(height: 15),
                 Container(
                      padding: EdgeInsets.only(left: 3,right:3),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                          'Personal informations',
                          style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 97, 150, 121)
                        ),
                        ),
                          Icon(
                          Icons.arrow_forward_ios,
                          color: Color.fromARGB(255, 76, 175, 158),
                          )
                        ],
                      ),
                      width: MediaQuery.of(context).size.width*0.6,
                      height: MediaQuery.of(context).size.height*0.05,
                      decoration: BoxDecoration(
                        //color: Colors.white,
                        borderRadius: BorderRadius.circular(11),
                        border: Border.all(color: Color.fromARGB(255, 218, 218, 218),width: 1),
                        
                      ),
                ),
               const SizedBox(height: 15),
                 Container(
                      padding: EdgeInsets.only(left: 3,right:3),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                          'Reviewer',
                          style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 97, 150, 121)
                        ),
                        ),
                          Icon(
                          Icons.arrow_forward_ios,
                          color: Color.fromARGB(255, 76, 175, 158),
                          )
                        ],
                      ),
                      width: MediaQuery.of(context).size.width*0.6,
                      height: MediaQuery.of(context).size.height*0.05,
                      decoration: BoxDecoration(
                        //color: Colors.white,
                        borderRadius: BorderRadius.circular(11),
                        border: Border.all(color: Color.fromARGB(255, 218, 218, 218),width: 1),
                        
                      ),
                ),
                const SizedBox(height: 25),
                Container(
                  width: MediaQuery.of(context).size.width*0.6,
                  height: MediaQuery.of(context).size.height*0.07,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 87, 125, 119),
                    borderRadius: BorderRadius.circular(11),
                    boxShadow:const [
                        BoxShadow(
                          color: Color.fromARGB(255, 194, 194, 194),
                          blurRadius: 9,
                          offset: Offset(9, 5)
                        )
                    ],
                  ),
                  child: TextButton(
                    onPressed: null,
                    child: Text(
                      'Confirm appointment',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                        ),
                      )
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}