import 'package:covigo/Authentication/login.dart';
import 'package:covigo/Authentication/signup.dart';
import 'package:covigo/Authentication/MainScreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'FoodSection/FoodScreen.dart';
import 'Variables.dart';
import 'WidgetResizing.dart';
import 'dart:async';
class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 1),
            () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => LoginPage())));
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    boxSizeH = SizeConfig.safeBlockHorizontal;
    boxSizeV = SizeConfig.safeBlockVertical;
    return Scaffold(
      body: Container(
        color: Colors.white,
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'CoviGo',
              style:GoogleFonts.sedgwickAve(
                fontSize: 50,
                color: Color(0xff001448),
                fontWeight: FontWeight.w500,
                shadows: [
                  Shadow(
                    offset: Offset(0,3),
                    blurRadius: 3.0,
                    color: Colors.grey,
                  ),
                ],
              ) ,
            ),
            ClipOval(
              child: Container(
                width: 282/3.6*boxSizeH,
                height: 309/6.4*boxSizeV,
                color: Color(0xffFF8B7B),
               child: Image.asset('images/SplashScreen.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
