import 'package:flutter/material.dart';
import 'package:proxy/servicesProxy/proxyService.dart';
import 'mosque.dart';
import 'reclamation.dart';
import '../items/itemBar.dart';
import '../items/studyRooms.dart';
import 'psych.dart';
import 'rest.dart';
import 'sport.dart';
import 'restau.dart';
import '../../servicesProxy/user.dart';
import '../../servicesProxy/services.dart';
import 'package:provider/provider.dart';
class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

    List<String> categories = [
    'Restau card',
    'Sport',
    'Complaint',
    'Psychiatrist',
    'مكتبة المسجد',
    'Restaurant',
  ];
  List<String> pictures = [
    'online.jpg',
    'sport.jpg',
    'reclam.jpg',
    'psych.jpg',
    'bibl.jpg',
    'restau.jpg',
  ];

  List<Widget> tabs = [
    Carte(),
    Sport(),
    Reclamation(),
    Psych(),
    Mosque(),
    RestauPlats(),
  ];


  //template of categories
  Container categoriesWidget(int index){
    return Container(
      padding: EdgeInsets.only(bottom: 5),
      width: MediaQuery.of(context).size.width*0.38,
      margin:(index%2==0)?const EdgeInsets.only(
        right: 7,
        bottom: 7
      ):const EdgeInsets.only(
        left: 7,
        bottom: 7
      ),
      decoration:const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(3, 3),
            color: Color.fromARGB(255, 201, 200, 200),
            blurRadius: 5
          )
        ],
        borderRadius: BorderRadius.only(topLeft: Radius.circular(39),bottomRight: Radius.circular(39) )
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: MediaQuery.of(context).size.width*0.4,
            height: MediaQuery.of(context).size.width*0.3,
            decoration: BoxDecoration(
              borderRadius:const BorderRadius.only(
                topLeft: Radius.circular(21),
                bottomRight: Radius.circular(60),
              ),
              image:  DecorationImage(
                image:ExactAssetImage('assets/${pictures[index]}'),
                fit: BoxFit.cover  
              ),
            ),
          ),
          Text('${categories[index]}')
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    User user = Provider.of<User>(context, listen: false);
    return Scaffold(
      appBar: appBar(context),
      body: Padding(
          padding: EdgeInsets.only(
            left: MediaQuery.of(context).size.width*0.07,
            right: MediaQuery.of(context).size.width*0.07,
          ),
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.width*0.05,
              ),
              Container(
                decoration: BoxDecoration(
                  color:const Color.fromARGB(255, 255, 255, 255),
                  border: Border.all(
                    color:const Color.fromARGB(255, 73, 85, 125),
                    width: 2.5
                  ),
                  borderRadius: BorderRadius.circular(17),
                  boxShadow:const [
                    BoxShadow(
                      offset: Offset(3, 5),
                      blurRadius: 5,
                      color: Color.fromARGB(255, 219, 219, 219)
                    )
                  ]
                ),
                width: MediaQuery.of(context).size.width*0.9,
                height: 100,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ListTile(
                      title:const Text('Ine space'),
                      subtitle:const Text("click to see your tasks in process"),
                      trailing: Image.asset(
                        'inpt.jpg',
                        fit: BoxFit.cover,
                        width: 130,
                      ),
                      onTap: (){},
                    )
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width*0.05,
              ),
              const Text(
                'wath you want to do ?',
                style: TextStyle(
                  color:  Color.fromARGB(255, 73, 85, 125),
                  fontSize: 19,
                  fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width*0.05,
              ),
              Expanded(
                 child:GridView.count(
                  crossAxisCount: 2,
                  children: List.generate(6, (index) => 
                    Center(
                      child: GestureDetector(
                        onTap: () {
                          ProxyService proxy = ProxyService(user);
                          proxy.handleService(ItemPage(index), context);
                        },
                        child: categoriesWidget(index),
                      ),
                    )
                  ),
                )
              ),   
            ],
          ),
        ),  
    );
  }
}