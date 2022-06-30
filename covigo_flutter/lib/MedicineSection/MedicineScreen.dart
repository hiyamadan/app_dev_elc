import 'package:covigo/ContactSection/ContactDr.dart';
import 'package:covigo/ControlScreen.dart';

import 'package:covigo/MedicineSection/PlaceMedicineOrder.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import '../Variables.dart';
import '../WidgetResizing.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart'as UrlLauncher;

class MedsScreen extends StatefulWidget {
  @override
  _MedsScreenState createState() => _MedsScreenState();
}

class _MedsScreenState extends State<MedsScreen> {
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
                            onTap: (){
                              Navigator.push(
                                context, MaterialPageRoute(builder: (context)=>ControlScreen(),)
                                ,);},
                          ),

                          Text(
                            'Medicine Delivery',
                            style:GoogleFonts.poppins(
                              fontSize: 27,
                              color: Color(0xffF7E1CC),
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
                                  color: Color(0xffF7E1CC),) ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 300/3.6*boxSizeH,
                      height: 160/6.4*boxSizeV,
                      margin: EdgeInsets.only(
                        top: 20/6.4*boxSizeV,
                        left: 30/3.6*boxSizeH,
                      ),
                      child: Image.asset('images/medsScreen.png'),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 20/3.6*boxSizeH,
                  right: 20/3.6*boxSizeH,
                ),
                child: Column(
                  children: [
                    Text(
                      'Hello! Tanya. \nBelow is a list of services delivering\nCovid-19 kit at your doorstep',
                      style: GoogleFonts.poppins(
                        fontSize: 19,
                        color: Color(0xff001448),
                        fontWeight: FontWeight.w500,
                      ) ,
                    ),
                    SizedBox(
                      height: 10/6.4*boxSizeV,
                    ),
                    Container(
                      height: 140/6.4*boxSizeV,
                      width: 313/3.6*boxSizeH,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xffBAD1EF),
                        ),
                        borderRadius:
                        BorderRadius.all(Radius.circular(25.0), //
                        ),
                        color: Color(0xffBAD1EF),
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 10/6.4*boxSizeV,
                          ),
                          Text(
                            'What does a Covid-19 kit\ninclude?',
                            style: GoogleFonts.poppins(
                                fontSize: 21.0,
                                color: Color(0xff000000),
                                fontWeight: FontWeight.w500
                            ),
                          ),
                          Text(
                            'Sanitizer , Mask ,Vitamin C,\nORS,Azithromicin 500 mg,\nZinc tablets',
                          style: GoogleFonts.poppins(
                              fontSize: 20.0,
                              color: Color(0xff000000),
                              fontWeight: FontWeight.w300
                          ),
                    ),
                        ],
                      ),
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
                              context, MaterialPageRoute(builder: (context)=>PlaceMedicineOrder(),)
                              ,);
                          },
                          child: Container(
                            width: 149/3.6*boxSizeH,
                            height: 157/6.4*boxSizeV,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Color(0x60FA9746),
                              ),
                              borderRadius:
                              BorderRadius.all(Radius.circular(25.0) //
                              ),
                              color: Color(0x60FA9746),),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  'ABC Medicines',
                                  style: GoogleFonts.poppins(
                                      fontSize: 17.0,
                                      color: Color(0xffEE6A00),
                                      fontWeight: FontWeight.w600
                                  ),
                                ),
                                Padding(
                                  padding:  EdgeInsets.only(
                                    left: 17/3.6*boxSizeH,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 22/3.6*boxSizeH,
                                        height: 22/6.4*boxSizeV,
                                        child: FittedBox(
                                          fit: BoxFit.fill,
                                          child: Icon(
                                              Icons.location_on,
                                              color: Color(0xffEE6A00)),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 3/3.6*boxSizeH,
                                      ),
                                      Text(
                                        '12,ABCD',
                                        style: GoogleFonts.poppins(
                                            fontSize: 17.0,
                                            color: Color(0xffEE6A00),
                                            fontWeight: FontWeight.w600
                                        ),
                                      )
                                    ],
                                  ),
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
                                            FontAwesomeIcons.rupeeSign,
                                            color: Color(0xffEE6A00)),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 3/3.6*boxSizeH,
                                    ),
                                    Text(
                                      '50 PER MEAL',
                                      style: GoogleFonts.poppins(
                                          fontSize: 17.0,
                                          color: Color(0xffEE6A00),
                                          fontWeight: FontWeight.w600
                                      ),
                                    )
                                  ],
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
                                            color: Color(0xff9EE6A00)),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 3/3.6*boxSizeH,
                                    ),
                                    GestureDetector(
                                        child: Text(
                                          mobileno,
                                          style: GoogleFonts.poppins(
                                              fontSize: 17.0,
                                              color: Color(0xffEE6A00),
                                              fontWeight: FontWeight.w600
                                          ),
                                        ),
                                        onTap:    (){
                                          launchUrl(mobileno);
                                        }
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(
                              context, MaterialPageRoute(builder: (context)=>PlaceMedicineOrder(),)
                              ,);
                          },
                          child: Container(
                            width: 149/3.6*boxSizeH,
                            height: 157/6.4*boxSizeV,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Color(0xffBAD1EF),
                              ),
                              borderRadius:
                              BorderRadius.all(Radius.circular(25.0) //
                              ),
                              color: Color(0xffBAD1EF),),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  'ABC Medicines',
                                  style: GoogleFonts.poppins(
                                      fontSize: 17.0,
                                      color: Color(0xff2C4C75),
                                      fontWeight: FontWeight.w600
                                  ),
                                ),
                                Padding(
                                  padding:  EdgeInsets.only(
                                    left: 17/3.6*boxSizeH,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 22/3.6*boxSizeH,
                                        height: 22/6.4*boxSizeV,
                                        child: FittedBox(
                                          fit: BoxFit.fill,
                                          child: Icon(
                                              Icons.location_on,
                                              color: Color(0xff2C4C75)),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 3/3.6*boxSizeH,
                                      ),
                                      Text(
                                        '12,ABCD',
                                        style: GoogleFonts.poppins(
                                            fontSize: 17.0,
                                            color: Color(0xff2C4C75),
                                            fontWeight: FontWeight.w600
                                        ),
                                      )
                                    ],
                                  ),
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
                                            FontAwesomeIcons.rupeeSign,
                                            color: Color(0xff2C4C75)),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 3/3.6*boxSizeH,
                                    ),
                                    Text(
                                      '200 PER KIT',
                                      style: GoogleFonts.poppins(
                                          fontSize: 17.0,
                                          color: Color(0xff2C4C75),
                                          fontWeight: FontWeight.w600
                                      ),
                                    )
                                  ],
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
                                        child: Text(
                                          mobileno,
                                          style: GoogleFonts.poppins(
                                              fontSize: 17.0,
                                              color: Color(0xff2C4C75),
                                              fontWeight: FontWeight.w600
                                          ),
                                        ),
                                        onTap:    (){
                                          launchUrl(mobileno);
                                        }
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
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
                              context, MaterialPageRoute(builder: (context)=>PlaceMedicineOrder(),)
                              ,);
                          },
                          child: Container(
                            width: 149/3.6*boxSizeH,
                            height: 157/6.4*boxSizeV,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Color(0xffBAD1EF),
                              ),
                              borderRadius:
                              BorderRadius.all(Radius.circular(25.0) //
                              ),
                              color: Color(0xff7BAD1EF),),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  'ABC Medicines',
                                  style: GoogleFonts.poppins(
                                      fontSize: 17.0,
                                      color: Color(0xff2C4C75),
                                      fontWeight: FontWeight.w600
                                  ),
                                ),
                                Padding(
                                  padding:  EdgeInsets.only(
                                    left: 17/3.6*boxSizeH,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 22/3.6*boxSizeH,
                                        height: 22/6.4*boxSizeV,
                                        child: FittedBox(
                                          fit: BoxFit.fill,
                                          child: Icon(
                                              Icons.location_on,
                                              color: Color(0xff2C4C75)),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 3/3.6*boxSizeH,
                                      ),
                                      Text(
                                        '12,ABCD',
                                        style: GoogleFonts.poppins(
                                            fontSize: 17.0,
                                            color: Color(0xff2C4C75),
                                            fontWeight: FontWeight.w600
                                        ),
                                      )
                                    ],
                                  ),
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
                                            FontAwesomeIcons.rupeeSign,
                                            color: Color(0xff2C4C75)),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 3/3.6*boxSizeH,
                                    ),
                                    Text(
                                      '200 PER KIT',
                                      style: GoogleFonts.poppins(
                                          fontSize: 17.0,
                                          color: Color(0xff2C4C75),
                                          fontWeight: FontWeight.w600
                                      ),
                                    )
                                  ],
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
                                        child: Text(
                                          mobileno,
                                          style: GoogleFonts.poppins(
                                              fontSize: 17.0,
                                              color: Color(0xff2C4C75),
                                              fontWeight: FontWeight.w600
                                          ),
                                        ),
                                        onTap:    (){
                                          launchUrl(mobileno);
                                        }
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(
                              context, MaterialPageRoute(builder: (context)=>PlaceMedicineOrder(),)
                              ,);
                          },
                          child: Container(
                            width: 149/3.6*boxSizeH,
                            height: 157/6.4*boxSizeV,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Color(0x60FA9746),
                              ),
                              borderRadius:
                              BorderRadius.all(Radius.circular(25.0) //
                              ),
                              color: Color(0x60FA9746),),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  'ABC Medicines',
                                  style: GoogleFonts.poppins(
                                      fontSize: 17.0,
                                      color: Color(0xffEE6A00),
                                      fontWeight: FontWeight.w600
                                  ),
                                ),
                                Padding(
                                  padding:  EdgeInsets.only(
                                    left: 17/3.6*boxSizeH,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 22/3.6*boxSizeH,
                                        height: 22/6.4*boxSizeV,
                                        child: FittedBox(
                                          fit: BoxFit.fill,
                                          child: Icon(
                                              Icons.location_on,
                                              color: Color(0xffEE6A00)),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 3/3.6*boxSizeH,
                                      ),
                                      Text(
                                        '12,ABCD',
                                        style: GoogleFonts.poppins(
                                            fontSize: 17.0,
                                            color: Color(0xffEE6A00),
                                            fontWeight: FontWeight.w600
                                        ),
                                      )
                                    ],
                                  ),
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
                                            FontAwesomeIcons.rupeeSign,
                                            color: Color(0xffEE6A00)),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 3/3.6*boxSizeH,
                                    ),
                                    Text(
                                      '200 PER KIT',
                                      style: GoogleFonts.poppins(
                                          fontSize: 17.0,
                                          color: Color(0xffEE6A00),
                                          fontWeight: FontWeight.w600
                                      ),
                                    )
                                  ],
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
                                            color: Color(0xffEE6A00)),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 3/3.6*boxSizeH,
                                    ),
                                    GestureDetector(
                                        child: Text(
                                          mobileno,
                                          style: GoogleFonts.poppins(
                                              fontSize: 17.0,
                                              color: Color(0xffEE6A00),
                                              fontWeight: FontWeight.w600
                                          ),
                                        ),
                                        onTap:    (){
                                          launchUrl(mobileno);
                                        }
                                    )
                                  ],
                                ),
                              ],
                            ),

                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20/6.4*boxSizeV,
                    ),
                  ],
                ),
              )

            ],
          ),
        ),
      ),
    ),
    );
  }
}
