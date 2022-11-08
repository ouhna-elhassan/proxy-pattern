import 'package:flutter/material.dart';


class Profile extends StatefulWidget {
  Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  Container infos(String txt){
    return Container(
      padding:const EdgeInsets.all(7),
      width: MediaQuery.of(context).size.width*0.75,
      height: 49,
      decoration: BoxDecoration(
        color:const Color.fromARGB(255, 239, 239, 239),
        borderRadius: BorderRadius.circular(7)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            txt,
            style:const TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.bold
            ),
          ),
          IconButton(
            onPressed:(){},
            icon:const Icon(Icons.arrow_forward_ios)
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('My informations'),
        centerTitle: true,
        backgroundColor:Color.fromARGB(255, 57, 131, 191),
        elevation: 0,
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
           Stack(
            clipBehavior: Clip.none,
            children: <Widget>[
              Container(
                decoration:const BoxDecoration(
                  color: Color.fromARGB(255, 57, 131, 191),
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(181), bottomRight: Radius.circular(181))
                ) ,
                height: MediaQuery.of(context).size.height*0.21,
                width: MediaQuery.of(context).size.width*1,
              ),
              const Positioned(
                right: 0,
                left: 0,
                bottom: -50,
                child:   CircleAvatar(
                  backgroundImage: AssetImage('doct2.jpg'),
                  radius:85,
                )
              ),
            ],
          ),
          const SizedBox(height: 57,),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'OUHNA NAJJARI',
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.bold
                ),
              ),
              const SizedBox(height: 7,),
              const Text(
                'ouhnanajjari.ine.ac.ma',
                style:TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold
                ),
              ),
              const SizedBox(height: 25,),
              infos('SUD Ine2'),
              const SizedBox(height: 15,),
              infos('Change password'),
              const SizedBox(height: 15,),
              infos('Ine'),
              const SizedBox(height: 15,),
              infos('Terms & Privacy'),
            ],
          )
        ],
      ),
    );
  }
}