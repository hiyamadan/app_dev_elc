import 'package:covigo/ContactSection/ChatHomePage.dart';
import 'package:flutter/material.dart';
import 'package:covigo/Variables.dart';
import 'package:covigo/WidgetResizing.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../ControlScreen.dart';
class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    boxSizeH = SizeConfig.safeBlockHorizontal;
    boxSizeV = SizeConfig.safeBlockVertical;
    return SafeArea(child: Scaffold(
      appBar: AppBar(
      toolbarHeight: 70/6.4*boxSizeV,
      backgroundColor: Color(0xff1D7FFF),
      title:
      Padding(
        padding: EdgeInsets.only(
          top: 20/6.4*boxSizeV,
        ),
        child: Row(
          children: [
            CircleAvatar(
              radius: 20.0/3.6*boxSizeH,
              backgroundColor:Color(0xffC1FEF6),
              child: Icon(
                Icons.person,
                color: Colors.black54,
                size: 30,),),
            SizedBox(
              width: 20/3.6*boxSizeH,
            ),
            Text(
              'Mary Collins',
              style:GoogleFonts.poppins(
                fontSize: 27,
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ) ,
            ),
          ],
        ),
      ),
      centerTitle: true,


      leading:  Padding(
        padding: EdgeInsets.only(
          top: 20/6.4*boxSizeV,
          left: 15/3.6*boxSizeH,
        ),
        child: GestureDetector(

          onTap: (){
            Navigator.push(
              context, MaterialPageRoute(builder: (context)=>ChatHomePage(),)
              ,);
          },
          child: Icon(Icons.chevron_left_rounded,
            color: Colors.white,
            size: 40,),
        ),
      ),
    ),
      // body: Container(
      //   width: double.infinity,
      //   height: double.infinity,
      //   color: Colors.white,
      //   child: Column(
      //
      //   ),
      // ),
    ),
    );
  }
}