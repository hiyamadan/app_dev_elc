import 'package:covigo/ContactSection/ContactDr.dart';
import 'package:covigo/ControlScreen.dart';
import 'package:covigo/TrackSection/LevelCheck.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Variables.dart';
import '../WidgetResizing.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class TrackSection extends StatefulWidget {
  @override
  _TrackSectionState createState() => _TrackSectionState();
}

class _TrackSectionState extends State<TrackSection> {
  TextEditingController _temperatureController;
  TextEditingController _oxygenController;
  
  FocusNode _temperaturenode;
  FocusNode _oxygennode;

  @override
  void initState() {
    _temperatureController = TextEditingController();
    _oxygennode = FocusNode();
    _oxygenController=TextEditingController();
    _temperaturenode=FocusNode();

    super.initState();
  }
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
      margin: EdgeInsets.only(
        bottom: 20/6.4*boxSizeV,
      ),
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
              top: 10/6.4*boxSizeV,

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
                  'Track',
                  style:GoogleFonts.poppins(
                    fontSize: 27,
                    color: Color(0xffFFEBE8),
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
                        color: Color(0xffFFEBE8),) ),
                )
              ],
            ),
          ),
          Container(
            width: 297/3.6*boxSizeH,
            height: 196/6.4*boxSizeV,
            margin: EdgeInsets.only(
              top: 20/6.4*boxSizeV,
              left: 30/3.6*boxSizeH,
            ),
            child: Image.asset('images/TrackPic.png'),
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

    Text(
    'Hello! Tanya.',
    style: GoogleFonts.poppins(
    fontSize: 21,
    color: Color(0xff001448),
    fontWeight: FontWeight.w500,
    ) ,
    ),
    Text(
    'Add your recent measure of body\ntemperature(in deg F) and oxygen level(in %)',
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
        height: 78/6.4*boxSizeV,
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
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(

              children: [
                SizedBox(
                  height: 10/6.4*boxSizeV,
                ),
                Text(
                  'Enter your body temperature',
                  style: GoogleFonts.poppins(
                    fontSize: 17,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ) ,
                ),
                Container(
                  width: 205/3.6*boxSizeH,
                  child: TextField(
                    focusNode: _temperaturenode,
                    controller: _temperatureController,
                    keyboardType: TextInputType.text,
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 20.0,
                    ),
                    cursorColor: Color(0xff2C4C75) ,
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black54,
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xff2C4C75),
                          )),
                    ),
                    onChanged: (value) {
                      setState(() {
                      });
                    },
                  ),
                ),
              ],
            ),
            Container(
              width: 40/3.6*boxSizeH,
              height: 60/6.4*boxSizeV,
              child: FittedBox(
                  fit: BoxFit.fill,
                  child: Image.asset('images/temperature.png')),
            ),
          ],
        ),
      ),
      SizedBox(
        height: 10/6.4*boxSizeV,
      ),
      Container(
        width: double.infinity,
        height: 78/6.4*boxSizeV,
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
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10/6.4*boxSizeV,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 20/3.6*boxSizeH,
                  ),
                  child: Text(
                    'Enter your oxygen level',
                    style: GoogleFonts.poppins(
                      fontSize: 17,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ) ,
                  ),
                ),
                Container(
                  width: 205/3.6*boxSizeH,
                  margin: EdgeInsets.only(
                    left: 20/3.6*boxSizeH,
                  ),

                  child: TextField(
                    focusNode: _oxygennode,
                    controller: _oxygenController,
                    keyboardType: TextInputType.text,
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 20.0,
                    ),
                    cursorColor: Color(0xff2C4C75) ,
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black54,
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xff2C4C75),
                          )),
                    ),
                    onChanged: (value) {
                      setState(() {
                      });
                    },
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 40/3.6*boxSizeH,
            ),
            Container(
              width: 40/3.6*boxSizeH,
              height: 60/6.4*boxSizeV,
              child: FittedBox(
                  fit: BoxFit.fill,
                  child: Image.asset('images/oxymeter.png')),
            ),
          ],
        ),
      ),
        ]
          ),
      ),
        GestureDetector(
          onTap: (){
            Navigator.push(
              context, MaterialPageRoute(builder: (context)=>LevelCheck(
             temperature: _temperatureController.text,
             oxygenlevel: _oxygenController.text,
            ),)
              ,);
          },
          child: Container(
            width: 184/3.6*boxSizeH,
            height: 42/6.4*boxSizeV,
            decoration: BoxDecoration(
              border: Border.all(
                color: Color(0xffFF8B7B),
              ),
              borderRadius:
              BorderRadius.all(Radius.circular(25.0) //
              ),
              color: Color(0xffFF8B7B),),
            child: Padding(
              padding:  EdgeInsets.only(
                top: 5/6.4*boxSizeV,
              ),
              child: Text(
                'Update',
                style: GoogleFonts.poppins(
                  fontSize: 17.0,
                  color: Color(0xff192D5E),
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
            ),

          ),
        ),
        SizedBox(
          height: 20/6.4*boxSizeV,
        ),
        ]
    )
    ),
        )
    ),
    );
  }
}
