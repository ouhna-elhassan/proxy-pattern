import 'package:flutter/material.dart';
import '../src/screens/profile.dart';
import '../src/screens/reclamation.dart';
import '../src/screens/sport.dart';
import '../src/screens/mosque.dart';
import '../src/screens/rest.dart';
import '../src/screens/psych.dart';
import '../src/screens/restau.dart';


abstract class Service{
  void handleService(Service service, BuildContext context){}
}

class ProfilePage implements Service{

  @override
  void handleService(Service service, BuildContext context){
    Navigator.push(
      context, 
      MaterialPageRoute(builder: ((context) => Profile()))
    );
  }
}

class ItemPage implements Service{
  final int index;
  List<Widget> tabs = [
    Carte(),
    Sport(),
    Reclamation(),
    Psych(),
    Mosque(),
    RestauPlats(),
  ];
  ItemPage(this.index);

  @override
  void handleService(Service service, BuildContext context){
    Navigator.push(
      context, 
      MaterialPageRoute(builder: ((context) => tabs[index]))
    );
  }
}