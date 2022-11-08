import 'package:flutter/material.dart';


class Carte extends StatefulWidget {
  Carte({Key? key}) : super(key: key);

  @override
  State<Carte> createState() => _CarteState();
}


class _CarteState extends State<Carte> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Cards'),
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 57, 131, 191),
      ),
      body: SingleChildScrollView(
      
      child: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: <Widget>[
              Container(
                decoration:const BoxDecoration(
                  color: Color.fromARGB(255, 57, 131, 191),
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(66))
                ) ,
                height: MediaQuery.of(context).size.height*0.2,
                width: MediaQuery.of(context).size.width*1,
              ),
              Positioned(
                right: 0,
                left: 0,
                bottom: -50,
                child:  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child:Row(children: [
                      Container(
                         margin: EdgeInsets.only(
                    left: 44,
                    right: 14
                  ),
                  decoration: BoxDecoration(
                    color:Color.fromARGB(255, 131, 205, 63),
                    borderRadius: BorderRadius.circular(17),
                    boxShadow:const [
                      BoxShadow(
                        offset: Offset(3, 3),
                        color: Color.fromARGB(255, 176, 189, 228),
                        blurRadius: 10,
                        
                      )
                    ]
                  ),
                  height: MediaQuery.of(context).size.height*0.25,
                  width: MediaQuery.of(context).size.width*0.6,
                  padding: EdgeInsets.all(11),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:const [
                      Text(
                        'VISA',
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      const SizedBox(height: 80,),
                      Text(
                        '**** **** **** 4567',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 19,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      const SizedBox(height: 7,),
                      Text(
                        'OUHNA ELHASSAN',
                        style: TextStyle(
                          color: Color.fromARGB(255, 225, 225, 225),
                        ),
                      )
                    ],
                  ),
                  
                ),
                Container(
                  margin:const EdgeInsets.only(
                    left: 14,
                    right: 14
                  ),
                  decoration: BoxDecoration(
                    color:const Color.fromARGB(255, 243, 176, 43),
                    borderRadius: BorderRadius.circular(17),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(3, 3),
                        color: Color.fromARGB(255, 176, 189, 228),
                        blurRadius: 10,
                        
                      )
                    ]
                  ),
                  padding: EdgeInsets.all(11),
                  height: MediaQuery.of(context).size.height*0.25,
                  width: MediaQuery.of(context).size.width*0.6,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:const [
                      Text(
                        'VISA',
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      const SizedBox(height: 80,),
                      Text(
                        '**** **** **** 4567',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 19,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      const SizedBox(height: 7,),
                      Text(
                        'OUHNA ELHASSAN',
                        style: TextStyle(
                          color: Color.fromARGB(255, 225, 225, 225),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 14,
                    right: 14
                  ),
                  padding: EdgeInsets.all(11),
                  decoration: BoxDecoration(
                    color:Color.fromARGB(255, 225, 77, 244),
                    borderRadius: BorderRadius.circular(17),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(3, 3),
                        color: Color.fromARGB(255, 176, 189, 228),
                        blurRadius: 10,
                        
                      )
                    ]
                  ),
                  height: MediaQuery.of(context).size.height*0.25,
                  width: MediaQuery.of(context).size.width*0.6,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:const [
                      Text(
                        'VISA',
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      const SizedBox(height: 80,),
                      Text(
                        '**** **** **** 4567',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 19,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      const SizedBox(height: 7,),
                      Text(
                        'OUHNA ELHASSAN',
                        style: TextStyle(
                          color: Color.fromARGB(255, 225, 225, 225),
                        ),
                      )
                    ],
                  ),
                ),
                    ],)
                  )
              ),
            ],
          ),
          const SizedBox(height: 70,),
          Padding(
          padding: EdgeInsets.only(
          left: MediaQuery.of(context).size.width*0.07,
          right: MediaQuery.of(context).size.width*0.07,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          
          const Text(
            'Select your amount ',
            style: TextStyle(
              fontSize: 21,
              fontWeight: FontWeight.bold
            ),
          ),
          const SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding:const EdgeInsets.all(7),
                width:MediaQuery.of(context).size.width*0.25,
                height:MediaQuery.of(context).size.height*0.13,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow:const [
                    BoxShadow(
                      offset: Offset(3, 3),
                      //spreadRadius: 5,
                      blurRadius: 9,
                      color: Color.fromARGB(255, 209, 209, 209)
                    )
                  ],
                  borderRadius: BorderRadius.circular(31)
                ),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(width: 1),
                    borderRadius: BorderRadius.circular(31)
                  ),
                  child:Column(
                    
                    children:const [
                      Icon(
                        Icons.monetization_on_outlined,
                        color: Color.fromARGB(255, 216, 195, 74),
                      ),
                      Text(
                      '100DH',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17
                      ),
                      ),
                  Text('popular')
                    ],
                  )
                ),
              ),
              Container(
                padding:const EdgeInsets.all(7),
                width:MediaQuery.of(context).size.width*0.25,
                height:MediaQuery.of(context).size.height*0.13,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow:const [
                    BoxShadow(
                      offset: Offset(3, 3),
                      //spreadRadius: 5,
                      blurRadius: 9,
                      color: Color.fromARGB(255, 209, 209, 209)
                    )
                  ],
                  borderRadius: BorderRadius.circular(31)
                ),
                child:Container(
                  decoration: BoxDecoration(
                    border: Border.all(width: 1),
                    borderRadius: BorderRadius.circular(31)
                  ),
                  child: Column(
                    
                    children:const [
                      Icon(
                        Icons.monetization_on_outlined,
                        color: Color.fromARGB(255, 60, 176, 37),
                      ),
                      Text(
                      '200DH',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17
                      ),
                      ),
                  Text('gold')
                    ],
                  )
                )
                
              ),
              Container(
                padding:const EdgeInsets.all(7),
                width:MediaQuery.of(context).size.width*0.25,
                height:MediaQuery.of(context).size.height*0.13,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow:const [
                    BoxShadow(
                      offset: Offset(3, 3),
                      //spreadRadius: 5,
                      blurRadius: 9,
                      color: Color.fromARGB(255, 209, 209, 209)
                    )
                  ],
                  borderRadius: BorderRadius.circular(31)
                ),
                child:Container(
                  decoration: BoxDecoration(
                    border: Border.all(width: 1),
                    borderRadius: BorderRadius.circular(31)
                  ),
                  child: Column(
                    
                    children:const [
                      Icon(
                        Icons.monetization_on_outlined,
                        color: Color.fromARGB(255, 122, 21, 122),
                      ),
                      Text(
                      '300DH',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 19
                      ),
                      ),
                  Text('premium')
                    ],
                  )
                )
              )
            ],
          ),
          const SizedBox(height: 25,),
          const Text(
            'Password',
            style: TextStyle(
              fontWeight: FontWeight.bold
            ),
            ),
          const SizedBox(height: 7,),
          Container(
            padding:const EdgeInsets.only(left:7),
            width: MediaQuery.of(context).size.width*0.9,
            decoration: BoxDecoration(
              color:const Color.fromARGB(255, 240, 240, 240),
              borderRadius: BorderRadius.circular(15)
            ),
            child: TextFormField(
            
            decoration:const InputDecoration(
              border: InputBorder.none,
              hintText: 'write here...'
            ),
          ),
          ),
          const SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[
                  const Text(
            'CVV',
            style: TextStyle(
              fontWeight: FontWeight.bold
            ),
            ),
            const SizedBox(height: 7,),
                  Container(
            padding:const EdgeInsets.only(left:7),
            width: MediaQuery.of(context).size.width*0.4,
            decoration: BoxDecoration(
              color:const Color.fromARGB(255, 240, 240, 240),
              borderRadius: BorderRadius.circular(15)
            ),
            child: TextFormField(
            
            decoration:const InputDecoration(
              border: InputBorder.none,
              hintText: 'write here...'
            ),
          ),
          ),
                ]
              ),
              
          Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[
                  const Text(
            'Expired date',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
            ),
            const SizedBox(height: 7,),
                  Container(
            padding:const EdgeInsets.only(left:7),
            width: MediaQuery.of(context).size.width*0.4,
            decoration: BoxDecoration(
              color:const Color.fromARGB(255, 240, 240, 240),
              borderRadius: BorderRadius.circular(15)
            ),
            child: TextFormField(
            
            decoration:const InputDecoration(
              border: InputBorder.none,
              hintText: 'JJ/MM/AA'
            ),
          ),
          ),
                ]
              ),
            ],
          ),
          const SizedBox(height: 25,),
          SizedBox(
            width: MediaQuery.of(context).size.width*0.9,
            child: ElevatedButton(
            onPressed: null,
            child: Text('Pay now'),
            style: ButtonStyle(
              backgroundColor: MaterialStateColor.resolveWith((states) => const Color.fromARGB(255, 57, 131, 191),),
              foregroundColor: MaterialStateColor.resolveWith((states) => Colors.white),
            ),
            ),
          ),
          
          
          
        ],
      ),
      )
        ],
      )
    ),
    );
  }
}