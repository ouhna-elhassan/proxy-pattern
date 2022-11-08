import 'package:flutter/material.dart';
import 'studyRooms.dart';

List<Color> colors1 = [
  Colors.green,
  Colors.red,
  Colors.yellow
];

List<Color> colors2 = [
  Color.fromARGB(255, 103, 194, 106),
  Color.fromARGB(255, 252, 111, 101),
  Color.fromARGB(255, 251, 237, 107)
];

List<Color> colors3 = [
  Color.fromARGB(255, 167, 236, 170),
  Color.fromARGB(255, 252, 146, 138),
  Color.fromARGB(255, 248, 238, 154)
];

List<Text> txts =const [
  Text('Soccer', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
  Text('Basketball', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
  Text('Volyballl', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
];

List<String> images = [
  'l3.png',
  'l4.png',
  'l7.png',
];

List<String> times = [
  '08:00',
  '10:00',
  '11:00',
  '12:00',
  '13:00',
  '16:00',
  '19:00',
  '20:00',
  '23:00',
];

Container listGames(BuildContext context){
  return Container(
    width: MediaQuery.of(context).size.width*1,
    height: MediaQuery.of(context).size.height*0.35,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 3,
      itemBuilder: (BuildContext context, int i){
        return GestureDetector(
          onTap:(){
            showModalBottomSheet(
              context: context,
              builder: (ctx) => showSportBottomSheet(ctx)
            );
          },
          child:  Container(
          width: MediaQuery.of(context).size.width*0.41,
          margin: EdgeInsets.only(right: 17, bottom: 17, top: 11, left: 11),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                colors1[i],
                colors2[i],
                colors3[i],
              ]
            ),
            borderRadius: BorderRadius.circular(17),
            boxShadow:const [
              BoxShadow(
                color: Color.fromARGB(255, 192, 192, 192),
                offset: Offset(5, 5),
                blurRadius: 7
              )
            ]
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children:[
              const SizedBox(height: 13,),
              txts[i],
              const SizedBox(height: 13,),
              Image.asset(images[i])
            ],
          ),
          
        ),
        );
      }
    ),
  );
}


Container freeTimes(BuildContext context, int index){
  return Container(
    width: MediaQuery.of(context).size.width*0.23,
    height: 45,
    decoration:const BoxDecoration(
      color: Color.fromARGB(255, 226, 246, 227),
    ),
    child: Center(
      child:Text(
        times[index],
        style:const TextStyle(
          color: Colors.green
        ),
      )
    ),
  );
}
bool value = true;
Container showSportBottomSheet(BuildContext context){
  return Container(
    height: MediaQuery.of(context).size.height*0.9,
    padding:const EdgeInsets.all(15),
    child: SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height*0.37,
            width: MediaQuery.of(context).size.width*1,
            child: GridView.count(
              crossAxisSpacing: MediaQuery.of(context).size.width*0.17,
              crossAxisCount: 3,
              children: List.generate(9, (index) => Center(
                child: GestureDetector(
                  child: freeTimes(context, index),
                ),
              )),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height*0.1,
            width: MediaQuery.of(context).size.width*1,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow:const [
                BoxShadow(
                  color: Color.fromARGB(255, 228, 228, 228),
                  offset: Offset(3, 3),
                  blurRadius: 7
                )
              ],
              borderRadius: BorderRadius.circular(13)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Text(
                  'Public evente?',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15
                  ),
                ),
                Switch(
                  value: value,
                  onChanged: (bool value){
                  },
                  activeColor: Color.fromARGB(255, 92, 164, 173),
                )
              ],
            ),
          ),
          const SizedBox(height: 15,),
          Container(
            height: 55,
            width: MediaQuery.of(context).size.width*1,
            decoration: BoxDecoration(
              color:const Color.fromARGB(255, 92, 186, 175),
              boxShadow:const [
                BoxShadow(
                  color: Color.fromARGB(255, 228, 228, 228),
                  offset: Offset(3, 3),
                  blurRadius: 7
                )
              ],
              borderRadius: BorderRadius.circular(13)
            ),
            child: TextButton(
              onPressed: (){},
              child: const Text(
                'Submite',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );  
}
