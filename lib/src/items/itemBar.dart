import 'package:flutter/material.dart';
import 'package:proxy/src/screens/profile.dart';
import '../../servicesProxy/user.dart';
import '../../servicesProxy/services.dart';
import '../../servicesProxy/proxyService.dart';
import 'package:provider/provider.dart';

AppBar appBar(BuildContext context){
  User user = Provider.of<User>(context, listen: false);
  return AppBar(
    shape:const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        bottom: Radius.circular(30),
      ),
    ),
    backgroundColor: Colors.white,
    title:Container(
      margin: EdgeInsets.only(
        right: MediaQuery.of(context).size.width*0.01,
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width*0.01,
              right: MediaQuery.of(context).size.width*0.02,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: (){},
                  icon:const Icon(Icons.menu,size: 33,color: Colors.black,) 
                ),
                const Text(
                  'INE SPACE',
                  style: TextStyle(
                    color: Color.fromARGB(255, 87, 117, 124)
                  ),
                  ),
                GestureDetector(
                  onTap: (){
                    ProxyService proxy = ProxyService(user);
                    proxy.handleService(ProfilePage(), context);
                  },
                  child: Image.asset(
                    'img4.jpg',
                    fit: BoxFit.cover,
                    width: 40,
                    height: 40,
                  ),
                )
              ],
            ),
          ),       
        ],
      ),
    )
  );
}