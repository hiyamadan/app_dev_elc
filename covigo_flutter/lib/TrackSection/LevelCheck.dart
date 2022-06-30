import 'package:covigo/ContactSection/ContactDr.dart';
import 'package:covigo/ControlScreen.dart';
import 'package:covigo/MedicineSection/MedicineScreen.dart';
import 'package:covigo/TrackSection/TempIndicator.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Variables.dart';
import '../WidgetResizing.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'TempIndicator.dart';
import 'OxygenIndicator.dart';
class LevelCheck extends StatefulWidget {
const LevelCheck({@ required this.temperature,@ required this.oxygenlevel});
final String temperature;
final String oxygenlevel;

  @override
  _LevelCheckState createState() => _LevelCheckState();
}

class _LevelCheckState extends State<LevelCheck> {

 List<String> temp=[
   'Ananya you are\ngood to go!\nStay healthy &\n take care.😇',
   'Tanya you have\nfever.Take your\n medicines &\nample amount\n of rest.💤',
   'Tanya you have\nfever.Consult\na doctor &\ntake your\n medicines🤒',
 ];
 List<String> oxygen=[
   'Oxygen level\nlooks great😄.\nKeep in mind\n to breathe\ndeep for 3 mins',
   'Oxygen level\nis below\n normal.Need\nto breathe in\n& out at\nregular\nintervals.',
   'You need to\nconsult a doctor\nASAP.Try\nsleeping on\nyour belly to\nimprove\noxygen level.'

 ];
  @override
  Widget build(BuildContext context) {
    double tempvalue=double.parse(widget.temperature);
    double oxygenvalue=double.parse(widget.oxygenlevel);
    int tempindex=0;
    int oxygenindex=0;
    tempindex=tempvalue<99?0:tempvalue>=99 && tempvalue<101?1:2;
    oxygenindex=oxygenvalue>=95?0:oxygenvalue<95 &&oxygenvalue>=90?1:2;
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
        child: Text(
          'Level Check',
          style:GoogleFonts.poppins(
            fontSize: 27,
            color: Color(0xffFFEBE8),
            fontWeight: FontWeight.w500,
          ) ,
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
              context, MaterialPageRoute(builder: (context)=>ControlScreen(),)
              ,);
          },
          child: Icon(Icons.home_rounded,
            color: Colors.white,
            size: 40,),
        ),
      ),
      actions: [
        Padding(
          padding:  EdgeInsets.only(
            top: 20/6.4*boxSizeV,
            right: 20/3.6*boxSizeH,
          ),
          child: GestureDetector(
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
          ),
        )
      ],

    ),
    body: Container(
    width: double.infinity,
    height: double.infinity,

    color: Colors.white,
    child: Container(
    margin: EdgeInsets.only(
    left: 20/3.6*boxSizeH,
    right: 20/3.6*boxSizeH,
    top: 10/6.4*boxSizeV,
    bottom: 10/6.4*boxSizeV,
    ),
      child: Column(
        children: [
          SizedBox(
            height: 30/6.4*boxSizeV,
          ),
          Container(
            width: 320/3.6*boxSizeH,
            height: 175/6.4*boxSizeV,
        decoration: BoxDecoration(
          color: Color(0xffFFEBE8),
          border: Border.all(
            color: Color(0xffFFEBE8),
          ),
          borderRadius:
          BorderRadius.all(Radius.circular(25.0) //
          ),
        ),
            child: Row(
              children: [
                Container(

                  height: 160/6.4*boxSizeV,
                  width: 170/3.6*boxSizeH,
                  child: TempIndicator(tempvalue),
                ),
                SizedBox(
                  width: 10/3.6*boxSizeH,
                ),
            Text(
               temp[tempindex],
              style: GoogleFonts.poppins(
                fontSize: 19.0,
                color: Color(0xffA22222),
                fontWeight: FontWeight.w600,
              ),
            ),

              ],
            ),
          ),
          SizedBox(
            height: 20/6.4*boxSizeV,
          ),
          Container(
            width: 320/3.6*boxSizeH,
            height: 175/6.4*boxSizeV,

              decoration: BoxDecoration(
                color: Color(0xffDCE7FF),
                border: Border.all(
                  color: Color(0xffDCE7FF),
                ),
                borderRadius:
                BorderRadius.all(Radius.circular(25.0) //
                ),
              ),
    child: Row(
    children: [
      SizedBox(
        width: 10/3.6*boxSizeH,
      ),
      Text(
        oxygen[oxygenindex],
        style: GoogleFonts.poppins(
          fontSize: 19.0,
          color: Color(0xff001448),
          fontWeight: FontWeight.w600,
        ),
      ),
      SizedBox(
        width: 5/3.6*boxSizeH,
      ),
    Container(

    height: 160/6.4*boxSizeV,
    width: 170/3.6*boxSizeH,
    child: OxygenIndicator(oxygenvalue),
    )
    ]),

          ),
          SizedBox(
            height: 20/6.4*boxSizeV,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.push(
                    context, MaterialPageRoute(builder: (context)=>MedsScreen(),)
                    ,);
                },
                child: Container(
                  width: 150/3.6*boxSizeH,
                  height: 100/6.4*boxSizeV,
                    decoration: BoxDecoration(
                      color: Color(0xffFFEBE8),
                      border: Border.all(
                        color: Color(0xffFFEBE8),
                      ),
                      borderRadius:
                      BorderRadius.all(Radius.circular(25.0) //
                      ),
                    ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10/3.6*boxSizeH,),
                     Text(
                        'Order\nCovid-19\nKit',
                        style: GoogleFonts.poppins(
                          fontSize: 19.0,
                          color: Color(0xffA22222),
                          fontWeight: FontWeight.w600,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        width: 10/3.6*boxSizeH,),
                      Container(
                        width: 49/3.6*boxSizeH,
                        height: 66/6.4*boxSizeV,
                        child: Image.asset('images/levelCheckMedicine.png'),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(
                    context, MaterialPageRoute(builder: (context)=>ContactDr(),)
                    ,);
                },
                child: Container(
                  width: 150/3.6*boxSizeH,
                  height: 100/6.4*boxSizeV,

                    decoration: BoxDecoration(
                      color: Color(0xffFFEBE8),
                      border: Border.all(
                        color: Color(0xffFFEBE8),
                      ),
                      borderRadius:
                      BorderRadius.all(Radius.circular(25.0) //
                      ),
                    ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10/3.6*boxSizeH,),
                      Text(
                        'Contact\na Doctor',
                        style: GoogleFonts.poppins(
                          fontSize: 19.0,
                          color: Color(0xffA22222),
                          fontWeight: FontWeight.w600,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        width: 10/3.6*boxSizeH,),
                      Container(
                        width: 57/3.6*boxSizeH,
                        height: 64/6.4*boxSizeV,
                        child: Image.asset('images/LevelCheckDr.png'),
                      ),
                    ],
                  ),

          ),
              )]
              ),
            ],
          ),

      ),
    ),
    ),
    );
  }
}
