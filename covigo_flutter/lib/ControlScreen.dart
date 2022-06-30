import 'package:covigo/Authentication/MainScreen.dart';
import 'package:covigo/ContactSection/ChatHomePage.dart';
import 'package:covigo/FoodSection/FoodScreen.dart';
import 'package:covigo/ReminderScreen.dart';
import 'package:covigo/Sanitization/SanitizationPage.dart';
import 'package:covigo/TrackSection/HomeScreen.dart';
import 'package:covigo/TrashSection/TrashPage.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class ControlScreen extends StatefulWidget {

  @override
  _ControlScreenState createState() => _ControlScreenState();
}

class _ControlScreenState extends State<ControlScreen> {
  int _currentindex=0;
  final List<Widget> _children=[
   TrackSection(),
    ReminderScreen(),
    FoodScreen(),
    MainScreen(),
  ];
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Column(
                children: [
                  Expanded(
                      child:_currentindex==0? MainScreen():
                      _currentindex==1?ReminderScreen():
                      _currentindex==2?TrackSection():
                      _currentindex==3?FoodScreen():
                      _currentindex==4?SanitizationPage():
                      _currentindex==5?TrashPage()
                          :ChatHomePage()),
                ]
            ),
          ],
        ),
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(

            canvasColor: Color(0xff14213D),
        ),
        child:   BottomNavigationBar(
          onTap: (int value){
            print(value);
            setState(() {
              _currentindex=value;
            });
          },
          currentIndex: _currentindex,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_rounded,size: 30.0,
                  color: _currentindex==0?Color(0xffFFBAB2):Colors.white),
              title: Text(''),

            ),
            BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.clock,
                    color: _currentindex==1?Color(0xffFFBAB2):Colors.white),
                title: Text('')
            ),

            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.thermometerHalf,
                  color: _currentindex==2?Color(0xffFFBAB2):Colors.white),
              title: Text(''),
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.utensils,
                  color: _currentindex==3?Color(0xffFFBAB2):Colors.white),
              title: Text(''),
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.sprayCan,
                  color: _currentindex==4?Color(0xffFFBAB2):Colors.white),
              title: Text(''),
            ),
            BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.trash,
                    color: _currentindex==5?Color(0xffFFBAB2):Colors.white),
                title: Text('')
            ),
            BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.comments,
                    color: _currentindex==6?Color(0xffFFBAB2):Colors.white),
                title: Text('')
            ),
          ],
        ),
      ),
    );
  }

}
