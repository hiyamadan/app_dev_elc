
import 'package:covigo/ContactSection/ContactDr.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../ControlScreen.dart';
import '../Variables.dart';
import 'package:url_launcher/url_launcher.dart';
import '../WidgetResizing.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart'as UrlLauncher;

class OrderPlaced extends StatefulWidget {
  @override
  _OrderPlacedState createState() => _OrderPlacedState();
}

class _OrderPlacedState extends State<OrderPlaced> {
  String mobileno='9856471532';
  void launchUrl(String phoneNumber) async {
    String url='tel:'+phoneNumber;
    if (await canLaunch(url)) {
      await UrlLauncher.launch(url);
    } else {
      throw "Could not launch $url";
    }
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
        color: Color(0xffF7E1CC),
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
                                  ,);},
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
                              'Order Placed',
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
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          width: 118/3.6*boxSizeH,
                          height: 118/6.4*boxSizeV,
                          margin: EdgeInsets.only(
                            top: 20/6.4*boxSizeV,
                          ),
                          child: Image.asset('images/OrderPlaced.png'),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10/6.4*boxSizeV,
                ),
                Container(
                  width: double.infinity,
                  height: 91/6.4*boxSizeV,
                  color: Color(0xffBAD1EF),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 15/6.4*boxSizeV,
                      ),
                      Text(
                        'Contact the delivery guy',
                        style: GoogleFonts.poppins(
                            fontSize: 22.0,
                            color: Color(0xff2C4C75),
                            fontWeight: FontWeight.w600
                        ),
                      ),
                      SizedBox(
                        height: 5/6.4*boxSizeV,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 22/3.6*boxSizeH,
                            height: 22/6.4*boxSizeV,
                            child: FittedBox(
                              fit: BoxFit.fill,
                              child: Icon(
                                  Icons.phone,
                                  color: Color(0xff2C4C75)),
                            ),
                          ),
                          SizedBox(
                            width: 3/3.6*boxSizeH,
                          ),
                          GestureDetector(
                            onTap:    (){
                              launchUrl(mobileno);
                            },
                            child: Text(
                              '9856471532',
                              style: GoogleFonts.poppins(
                                  fontSize: 17.0,
                                  color: Color(0xff2C4C75),
                                  fontWeight: FontWeight.w600
                              ),
                            ),
                          )
                        ],
                      ),

                    ],
                  ),
                ),
                SizedBox(
                  height: 10/6.4*boxSizeV,
                ),
                Container(
                  width: double.infinity,
                  height: 50/6.4*boxSizeV,
                  color: Color(0x60FA9746),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10/6.4*boxSizeV,
                      ),
                      Text(
                        'Your parcel is being packed!!',
                        style: GoogleFonts.poppins(
                            fontSize: 22.0,
                            color: Color(0xffEE6A00),
                            fontWeight: FontWeight.w500
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20/6.4*boxSizeV,
                ),
                Container(
                  width: 168/3.6*boxSizeH,
                  height: 158/6.4*boxSizeV,
                  child: Image.asset('images/MedicineOrder.png'),
                ),
              ]
          ),
        ),
      ),
    ),
    );
  }
}
