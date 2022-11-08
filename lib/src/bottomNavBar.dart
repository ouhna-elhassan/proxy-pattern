import 'package:flutter/material.dart';
import 'screens/homePage.dart';
import 'screens/profile.dart';
import 'screens/mosque.dart';

class Controller extends StatefulWidget {
  Controller({Key? key}) : super(key: key);

  @override
  State<Controller> createState() => _ControllerState();
}

class _ControllerState extends State<Controller> {

  

  int _current = 0;
  
  int _currentIndex = 1;
  List<Widget> _pages =[];

   @override
  void initState() {
    _pages.add(Mosque());
    _pages.add(HomePage());
    _pages.add(Profile());
  }

 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 5.0,
        clipBehavior: Clip.antiAlias,
        child: Container(
          height: kBottomNavigationBarHeight,
          child: Container(
            decoration:const BoxDecoration(
              color: Colors.white,
              border: Border(
                top: BorderSide(
                  color: Colors.white,
                  width: 0.5,
                ),
              ),
            ),
            child: BottomNavigationBar(
              currentIndex: _currentIndex,
              backgroundColor: Colors.white,
              selectedItemColor: Colors.green,
              onTap: (index) {
                setState(() {
                  _currentIndex = index;
                });
              },
              items:const [
                BottomNavigationBarItem(icon: Icon(Icons.calendar_month_outlined,color: Colors.green,), label: 'Calendar'),
                BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
                BottomNavigationBarItem(icon: Icon(Icons.more_outlined,color: Colors.green,), label: 'More')
              ],
            ),
          ),
        ),
      ),
      floatingActionButtonLocation:FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FloatingActionButton(
          backgroundColor: Colors.white,
          child:const Icon(Icons.home_outlined,color: Colors.green,),
          onPressed: () => setState(() {
            _currentIndex = 1;
            }
          ),
        ),
      ),
    );
  }
}