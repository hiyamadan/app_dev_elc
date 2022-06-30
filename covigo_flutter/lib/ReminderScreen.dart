import 'package:covigo/ContactSection/ContactDr.dart';
import 'package:covigo/ControlScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Variables.dart';
import 'WidgetResizing.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class ReminderScreen extends StatefulWidget {
  @override
  _ReminderScreenState createState() => _ReminderScreenState();
}

class _ReminderScreenState extends State<ReminderScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    boxSizeH = SizeConfig.safeBlockHorizontal;
    boxSizeV = SizeConfig.safeBlockVertical;
    return SafeArea(child: Scaffold(
    body: Container(
    width: double.infinity,
    height: double.infinity,
    color: Colors.white,
    child: SingleChildScrollView(
    child: Column(
    children: [
    Container(
    width: 360/3.6*boxSizeH,
    height: 300/6.4*boxSizeV,
    decoration: new BoxDecoration(
    borderRadius: BorderRadius.vertical(
    bottom: Radius.elliptical(
    200/3.6*boxSizeH , 100.0)),
    color: Color(0xff1D7FFF),
    ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.baseline,
        textBaseline: TextBaseline.alphabetic,
        children: [
          Padding(
            padding:  EdgeInsets.only(
              top: 20/6.4*boxSizeV,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context, MaterialPageRoute(builder: (context)=>ControlScreen(),)
                      ,);
                  },
                  child: Container(
                    width: 36/3.6*boxSizeH,
                    height: 36/6.4*boxSizeV,
                    child: FittedBox(
                      fit: BoxFit.fill,
                      child: Icon(
                        Icons.home_rounded,
                        color: Colors.white, ),
                    ),
                  ),
                ),

                Text(
                  'Reminders',
                  style:GoogleFonts.poppins(
                    fontSize: 27,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ) ,
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context, MaterialPageRoute(builder: (context)=>ContactDr(),)
                      ,);
                  },
                  child: Container(
                      width: 20/3.6*boxSizeH,
                      height: 20/6.4*boxSizeV,
                      child:Icon(FontAwesomeIcons.userNurse,
                        color: Colors.white,) ),
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              width: 195/3.6*boxSizeH,
              height: 162/6.4*boxSizeV,
              margin: EdgeInsets.only(
                top: 20/6.4*boxSizeV,

              ),
              child: Image.asset('images/Clock.png'),
            ),
          ),
        ],
      ),
    ),
    Padding(
    padding: EdgeInsets.only(
    left: 20/3.6*boxSizeH,
    right: 20/3.6*boxSizeH,
      bottom: 20/6.4*boxSizeV,
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      SizedBox(
        height: 5/6.4*boxSizeV,
      ),
    Text(
    'Hello! Tanya.',
    style: GoogleFonts.poppins(
    fontSize: 19,
    color: Color(0xff001448),
    fontWeight: FontWeight.w500,
    ) ,
    ),
    Text(
    'Follow these reminders to recover faster.',
    style: GoogleFonts.poppins(
    fontSize: 16,
    color: Color(0xff001448),
    fontWeight: FontWeight.w500,
    ) ,
    ),
    SizedBox(
    height: 10/6.4*boxSizeV,
    ),
      Container(
          width: double.infinity,
          height: 82/6.4*boxSizeV,
          decoration: BoxDecoration(
            border: Border.all(
              color: Color(0x707AB4FF),
            ),
            borderRadius:
            BorderRadius.all(Radius.circular(20.0) //
            ),
            color: Color(0x707AB4FF),
          ),
        child: Row(
          children: [
            SizedBox(
              width: 10/3.6*boxSizeH,
            ),
            Text(
              'Medicine [name]\n in 1 hour',
              style: GoogleFonts.poppins(
                fontSize: 17,
                color: Colors.black,
                fontWeight: FontWeight.w400,
              ) ,
            ),
            SizedBox(
              width: 120/3.6*boxSizeH,
            ),
            Container(
              width: 50/3.6*boxSizeH,
              height: 60/6.4*boxSizeV,
              child: FittedBox(
                fit: BoxFit.fill,
                  child: Image.asset('images/Medicine.png')),
            ),
          ],
        ),
      ),
      SizedBox(
        height: 10/6.4*boxSizeV,
      ),
      Row(
        children: [
          Container(
            width:  196/3.6*boxSizeH,
            height: 82/6.4*boxSizeV,
            decoration: BoxDecoration(
              border: Border.all(
                color: Color(0x5047DDE7),
              ),
              borderRadius:
              BorderRadius.all(Radius.circular(20.0) //
              ),
              color: Color(0x5047DDE7),
            ),
            child: Row(
              children: [
                SizedBox(
                  width: 10/3.6*boxSizeH,
                ),
                Text(
                  'Take steam in\n 20 mins',
                  style: GoogleFonts.poppins(
                    fontSize: 17,
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                  ) ,
                ),

                Container(
                  width: 80/3.6*boxSizeH,
                  height: 48/6.4*boxSizeV,
                  child: FittedBox(
                    fit: BoxFit.fill,
                      child: Image.asset('images/Steam.png')),
                ),
            ]
          ),
          ),
                SizedBox(
                  width: 20/3.6*boxSizeH,
                ),
                Container(
                  width:  100/3.6*boxSizeH,
                  height: 82/6.4*boxSizeV,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0x6068FCEA),
                    ),
                    borderRadius:
                    BorderRadius.all(Radius.circular(20.0) //
                    ),
                    color: Color(0x6068FCEA),
                  ),
                  child: Row(

                    children: [
                      SizedBox(
                        width: 10/3.6*boxSizeH,
                      ),
                      Text(
                        'Drink\nwater in\n5 mins',
                        style: GoogleFonts.poppins(
                          fontSize: 17,
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                        ) ,
                      ),
                      Container(
                        width: 26/3.6*boxSizeH,
                        height: 45/6.4*boxSizeV,
                        child: FittedBox(
                          fit: BoxFit.fill,
                            child: Image.asset('images/DrinkWater.png')),
                      ),
                    ],
                  ),
                ),
              ],
            ),

      SizedBox(
        height: 10/6.4*boxSizeV,
      ),
      Container(
        width: double.infinity,
        height: 82/6.4*boxSizeV,
        decoration: BoxDecoration(
          border: Border.all(
            color: Color(0x707AB4FF),
          ),
          borderRadius:
          BorderRadius.all(Radius.circular(20.0) //
          ),
          color: Color(0x707AB4FF),
        ),
        child: Row(
          children: [
            SizedBox(
              width: 10/3.6*boxSizeH,
            ),
            Text(
              'Take rest for an hour',
              style: GoogleFonts.poppins(
                fontSize: 17,
                color: Colors.black,
                fontWeight: FontWeight.w400,
              ) ,
            ),
            SizedBox(
              width: 40/3.6*boxSizeH,
            ),
            Container(
              width: 110/3.6*boxSizeH,
              height: 82/6.4*boxSizeV,
              child: FittedBox(
                  fit: BoxFit.fill,
                  child: Image.asset('images/Sleep.png')),
            ),
          ],
        ),
      ),

        ],
      ),

    ),

      ]
    ),
    ),
    ),
    )
    );
  }
}

