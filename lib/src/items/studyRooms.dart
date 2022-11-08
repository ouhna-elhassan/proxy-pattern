import 'package:flutter/material.dart';


Container inputfields(BuildContext context, TextEditingController input, String label){
  return Container(
    margin:const EdgeInsets.only(top:13),
    width: MediaQuery.of(context).size.width*0.85,
    height: 50,
    child: TextFormField(
      controller: input,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: label,
      ),
    ),
  );
}

TextEditingController number = TextEditingController();
TextEditingController peo = TextEditingController();
TextEditingController rais = TextEditingController();

Container buildBottomSheet(BuildContext context){
  return Container(
    height: MediaQuery.of(context).size.height*0.6,
    padding:const EdgeInsets.all(15),
    child: ListView(
      children: [
        const Text(
          'Reservation des salles',
          style: TextStyle(
            fontSize: 21,
            color: Color.fromARGB(255, 44, 111, 46)
          ),
        ),
        const SizedBox(height: 13,),
        const Text(
          'Merci de remplire le formulaire ci-desseus pour traiter votre demande.',
          style: TextStyle(
            color: Color.fromARGB(255, 19, 95, 77)
          ),
        ),
        inputfields(context, number,  "Room number*"),
        inputfields(context, peo, "How many people*"),
        Container(
          margin:const EdgeInsets.only(top: 13),
          width: MediaQuery.of(context).size.width*0.85,
          height: 50,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(primary: Colors.green,),
          onPressed: (){
            showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime.now(),
              lastDate: DateTime(2025),
            );
          },
          child:const Text('La date')
        ),
        ),
        Container(
          margin:const EdgeInsets.only(top:13),
          width: MediaQuery.of(context).size.width*0.85,
          height: 50,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(primary: Colors.green),
          onPressed: (){
            final DateTime now = DateTime.now();
            showTimePicker(
              context: context,
              initialTime: TimeOfDay(hour: now.hour, minute: now.minute)
            );
          },
          child:const Text('Heure de débute')
        ),
        ),
        Container(
          margin:const EdgeInsets.only(top:13),
          width: MediaQuery.of(context).size.width*0.85,
          height: 50,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(primary: Colors.green),
          onPressed: (){
            final DateTime now = DateTime.now();
            showTimePicker(
              context: context,
              initialTime: TimeOfDay(hour: now.hour, minute: now.minute)
            );
          },
          child:const Text('Heure de fin')
        ),
        ),
        inputfields(context, rais, "justification detallée*"),
        Container(
          margin:const EdgeInsets.only(top: 39),
          width: MediaQuery.of(context).size.width*0.85,
          decoration: BoxDecoration(
            color:const Color.fromARGB(255, 49, 168, 85),
            borderRadius: BorderRadius.circular(27)
          ),
          child: TextButton(
            onPressed: (){
              Navigator.pop(context); 
            },
            child: const Text(
              "submit",
              style: TextStyle(
                fontSize: 17,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}