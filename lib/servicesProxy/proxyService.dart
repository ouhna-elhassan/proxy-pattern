import 'package:flutter/material.dart';
import 'services.dart';
import 'user.dart';
import '../src/screens/login.dart';

class ProxyService implements Service{

  User user;
  ProxyService(this.user);

  checkAccess(){
    return user.status;
  }

  @override
  void handleService(Service service, BuildContext context){
    if(checkAccess()){
      service.handleService(service, context);
    }
    else{
      Navigator.push(
        context, 
        MaterialPageRoute(builder: ((context) => Login()))
      );
    }
  }
}