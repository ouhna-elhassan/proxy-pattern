import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import '../items/mosqueBooks.dart';
class Mosque extends StatefulWidget {
  Mosque({Key? key}) : super(key: key);

  @override
  State<Mosque> createState() => _MosqueState();
}

class _MosqueState extends State<Mosque> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('تصنيف الكتب'),
        backgroundColor:Color.fromARGB(255, 134, 51, 12), 
      ),
      body: Padding(
        padding: EdgeInsets.all(17),
        child:  SingleChildScrollView(
          child: Column(
            children: List.generate(
              8,
              (index) => mosqueBooksList(context,index)
            ),
          ),
        ),
      )
    );
  }
}