import 'package:flutter/material.dart';
import 'src/bottomNavBar.dart';
import 'src/screens/login.dart';
import 'package:provider/provider.dart';
import 'servicesProxy/user.dart';
void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => User(),
        ),
      ],
      child:MaterialApp(
        title: 'proxy',
        home:Login()
      )
    ); 
  }
}