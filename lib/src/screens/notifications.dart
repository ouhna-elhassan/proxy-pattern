import 'package:flutter/material.dart';



class Notif extends StatefulWidget {
  Notif({Key? key}) : super(key: key);

  @override
  State<Notif> createState() => _NotifState();
}

class _NotifState extends State<Notif> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('Notifications'),
      ),
    );
  }
}