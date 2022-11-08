import 'package:flutter/material.dart';
import '../items/sportGames.dart';


class Sport extends StatefulWidget {
  Sport({Key? key}) : super(key: key);

  @override
  State<Sport> createState() => _SportState();
}

class _SportState extends State<Sport> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //elevation: 0,
        backgroundColor: Color.fromARGB(255, 135, 224, 216),
        title: const Text(
          'Select time that suits you best',
          style: TextStyle(
            fontSize: 19,
            fontWeight: FontWeight.bold,
            color: Colors.black
          ),
        ),
      ),
      body:SingleChildScrollView(
        child: Column(
          children: [
            Theme(
              data: Theme.of(context).copyWith(
              // primaryColor: Colors.green,
                colorScheme:const ColorScheme.light(
                  primary: Colors.green,
                  onPrimary: Colors.white,
                  onSurface: Colors.black,
                ),
                //accentColor: Colors.black,
                textButtonTheme: TextButtonThemeData(
                  style: TextButton.styleFrom(
                    primary: Colors.purple
                  )
                ),
              ),
              child:CalendarDatePicker(
                initialDate: DateTime.now(),
                firstDate: DateTime.now(),
                lastDate: DateTime.parse('2023-09-15'),
                onDateChanged: (DateTime date){
                  print(date);
                },
              )
            ),
            Padding(
              padding: EdgeInsets.only(left: 17, right: 17),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Select your game:',
                    style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(height: 17,),
                  listGames(context),
                ],
              ),
            ),
          ],
        ),
      )
    );
  }
}