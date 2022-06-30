import 'package:covigo/ContactSection/ContactDr.dart';
import 'package:covigo/ControlScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../Variables.dart';
import '../WidgetResizing.dart';
class ChatHomePage extends StatefulWidget {
  @override
  _ChatHomePageState createState() => _ChatHomePageState();
}

class _ChatHomePageState extends State<ChatHomePage> {
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
                  'Chat',
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
              width: 360/3.6*boxSizeH,
              height: 200/6.4*boxSizeV,
              margin: EdgeInsets.only(
                top: 20/6.4*boxSizeV,

              ),
              child: Image.asset('images/chatpgpic.png'),
            ),
          ),
        ],
      ),
    ),
    Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    SizedBox(
    height: 5/6.4*boxSizeV,
    ),
    Container(
      margin: EdgeInsets.only(
        left: 20/3.6*boxSizeH,
        right: 20/3.6*boxSizeH,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
          'Hello! Tanya.',
          style: GoogleFonts.poppins(
          fontSize: 19,
          color: Color(0xff001448),
          fontWeight: FontWeight.w500,
          ) ,
          ),
          Text(
            'You can interact with some other home isolated patients',
            style: GoogleFonts.poppins(
              fontSize: 16,
              color: Color(0xff001448),
              fontWeight: FontWeight.w500,
            ) ,
          ),
        ],
      ),
    ),

    SizedBox(
    height: 10/6.4*boxSizeV,
    ),
      GestureDetector(
        child: Container(
          height: 82/6.4*boxSizeV,
          width: double.infinity,
          decoration: BoxDecoration(
            border: Border.all(
              color: Color(0x907AB4FF),
            ),
            color: Color(0xffC1FEF6),
          ),
          child: Row(
            children: [
              SizedBox(
                width: 20/3.6*boxSizeH,
              ),
              CircleAvatar(
                radius: 30.0/3.6*boxSizeH,
                backgroundColor: Color(0xff407BFF),
                child: Icon(
                  Icons.person,
                  color: Color(0xffC1FEF6),
                size: 50,),),
              SizedBox(
                width: 20/3.6*boxSizeH,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                      'Tanya Agarwal',
                      style: GoogleFonts.poppins(
                        fontSize: 19,
                        color: Color(0xff001448),
                        fontWeight: FontWeight.w500,
                      ) ,
                  ),
                  SizedBox(
                    height: 5/6.4*boxSizeH,
                  ),
                  Text(
                    'Heyy!! how are you doing...',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      color: Color(0xff001448),
                      fontWeight: FontWeight.w300,
                    ) ,
                  ),
                ],
              ),
            ],
          ),
        ),
        ),

      GestureDetector(
        child: Container(
          height: 82/6.4*boxSizeV,
          width: double.infinity,
          decoration: BoxDecoration(
            border: Border.all(
              color: Color(0x907AB4FF),
            ),
            color: Color(0xffC1FEF6),
          ),
          child: Row(
            children: [
              SizedBox(
                width: 20/3.6*boxSizeH,
              ),
              CircleAvatar(
                radius: 30.0/3.6*boxSizeH,
                backgroundColor: Color(0xff407BFF),
                child: Icon(
                  Icons.person,
                  color: Color(0xffC1FEF6),
                  size: 50,),),
              SizedBox(
                width: 20/3.6*boxSizeH,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Tanya Agarwal',
                    style: GoogleFonts.poppins(
                      fontSize: 19,
                      color: Color(0xff001448),
                      fontWeight: FontWeight.w500,
                    ) ,
                  ),
                  SizedBox(
                    height: 5/6.4*boxSizeH,
                  ),
                  Text(
                    'Heyy!! how are you doing...',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      color: Color(0xff001448),
                      fontWeight: FontWeight.w300,
                    ) ,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      GestureDetector(
        child: Container(
          height: 82/6.4*boxSizeV,
          width: double.infinity,
          decoration: BoxDecoration(
            border: Border.all(
              color: Color(0x907AB4FF),
            ),
            color: Color(0xffC1FEF6),
          ),
          child: Row(
            children: [
              SizedBox(
                width: 20/3.6*boxSizeH,
              ),
              CircleAvatar(
                radius: 30.0/3.6*boxSizeH,
                backgroundColor: Color(0xff407BFF),
                child: Icon(
                  Icons.person,
                  color: Color(0xffC1FEF6),
                  size: 50,),),
              SizedBox(
                width: 20/3.6*boxSizeH,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Tanya Agarwal',
                    style: GoogleFonts.poppins(
                      fontSize: 19,
                      color: Color(0xff001448),
                      fontWeight: FontWeight.w500,
                    ) ,
                  ),
                  SizedBox(
                    height: 5/6.4*boxSizeH,
                  ),
                  Text(
                    'Heyy!! how are you doing...',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      color: Color(0xff001448),
                      fontWeight: FontWeight.w300,
                    ) ,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      GestureDetector(
        child: Container(
          height: 82/6.4*boxSizeV,
          width: double.infinity,
          decoration: BoxDecoration(
            border: Border.all(
              color: Color(0x907AB4FF),
            ),
            color: Color(0xffC1FEF6),
          ),
          child: Row(
            children: [
              SizedBox(
                width: 20/3.6*boxSizeH,
              ),
              CircleAvatar(
                radius: 30.0/3.6*boxSizeH,
                backgroundColor: Color(0xff407BFF),
                child: Icon(
                  Icons.person,
                  color: Color(0xffC1FEF6),
                  size: 50,),),
              SizedBox(
                width: 20/3.6*boxSizeH,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Tanya Agarwal',
                    style: GoogleFonts.poppins(
                      fontSize: 19,
                      color: Color(0xff001448),
                      fontWeight: FontWeight.w500,
                    ) ,
                  ),
                  SizedBox(
                    height: 5/6.4*boxSizeH,
                  ),
                  Text(
                    'Heyy!! how are you doing...',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      color: Color(0xff001448),
                      fontWeight: FontWeight.w300,
                    ) ,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),

    ]),
        // SizedBox(
        //   height: 20/6.4*boxSizeH,
        // ),
    ],
    ),
    ),
    ),
    ),
    );
  }
}
