import 'package:covigo/Activities.dart';
import 'package:covigo/ContactSection/ContactDr.dart';
import 'package:covigo/MedicineSection/MedicineScreen.dart';
import 'package:covigo/Sanitization/SanitizationPage.dart';
import 'package:covigo/TrackSection/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Variables.dart';
import '../WidgetResizing.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentindex=0;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    boxSizeH = SizeConfig.safeBlockHorizontal;
    boxSizeV = SizeConfig.safeBlockVertical;
    return SafeArea(child: Scaffold(
      appBar: AppBar(
      toolbarHeight: 50/6.4*boxSizeV,
      backgroundColor: Colors.white,
      title:
      Padding(
        padding: EdgeInsets.only(
          top: 20/6.4*boxSizeV,
        ),
        child: Text(
          'CoviGo',
          style:GoogleFonts.sedgwickAve(
            fontSize: 27,
            color: Color(0xff001448),
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
        child: Icon(Icons.home_rounded,
          color: Color(0xff2A00FC),
          size: 40,),
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
                  color: Color(0xff2A00FC),) ),
          ),
        )
      ],

    ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Color(0xffEFF6FF),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: 360/3.5*boxSizeH,
                height: 280/6.4*boxSizeV,

                decoration:BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                  BorderRadius.only(
                      bottomLeft: Radius.circular(70.0),
                    bottomRight: Radius.circular(70.0),
                    //
                  ),
                ),
                child: Container(
                  margin: EdgeInsets.only(
                    top: 20/6.4*boxSizeV,
                    left: 20/3.6*boxSizeH,
                    right: 20/3.6*boxSizeH,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Text(
                      'Hello! Tanya',
                      style: GoogleFonts.poppins(
                        fontSize: 27.0,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff001448)
                      ),
                    ),
                      SizedBox(
                        height: 20/6.4*boxSizeV,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              GestureDetector(
                                onTap: (){
                                  Navigator.push(
                                    context, MaterialPageRoute(builder: (context)=>TrackSection(),)
                                    ,);
                                },
                                child: Container(
                                  width: 160/3.6*boxSizeH,
                                  height: 80/6.4*boxSizeV,

                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Color(0xffEFF6FF),
                                    ),
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(20.0) //
                                    ),
                                    color: Color(0xffEFF6FF),
                                    boxShadow: [
                                  BoxShadow(
                                  color: Colors.blueAccent,
                                    offset: Offset(0,3),
                                    blurRadius: 3,
                                  ),
                                ]//B
                                  ),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                  SizedBox(
                                  width: 10/3.6*boxSizeH,
                                  ),
                                      Text(
                                        'Temperature',
                                        style: GoogleFonts.poppins(
                                          fontSize: 17,
                                          color: Color(0xff001448),
                                          fontWeight: FontWeight.w500,
                                        ) ,
                                      ),
                                      SizedBox(
                                        width: 10/3.6*boxSizeH,
                                      ),
                                      Container(
                                        width: 35/3.6*boxSizeH,
                                        height: 56/6.4*boxSizeV,
                                        child: FittedBox(
                                            fit: BoxFit.fill,
                                            child: Image.asset('images/temperature.png')),
                                      ),
                                  ]
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 15/6.4*boxSizeV,
                              ),
                              GestureDetector(
                                onTap: (){
                                  Navigator.push(
                                    context, MaterialPageRoute(builder: (context)=>TrackSection(),)
                                    ,);
                                },
                                child: Container(
                                  width: 160/3.6*boxSizeH,
                                  height: 80/6.4*boxSizeV,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Color(0xffEFF6FF),
                                    ),
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(20.0) //
                                    ),
                                    color: Color(0xffEFF6FF),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.blueAccent,
                                          offset: Offset(0,3),
                                          blurRadius: 3,
                                        ),
                                      ]//B
                                  ),
                                  child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        SizedBox(
                                          width: 10/3.6*boxSizeH,
                                        ),
                                        Text(
                                          'Oxygen Level',
                                          style: GoogleFonts.poppins(
                                            fontSize: 17,
                                            color: Color(0xff001448),
                                            fontWeight: FontWeight.w500,
                                          ) ,
                                        ),
                                        SizedBox(
                                          width: 10/3.6*boxSizeH,
                                        ),
                                        Container(
                                          width: 35/3.6*boxSizeH,
                                          height: 56/6.4*boxSizeV,
                                          child: FittedBox(
                                              fit: BoxFit.fill,
                                              child: Image.asset('images/oxymeter.png')),
                                        ),
                                      ]
                                  ),
                                ),
                              ),

                            ],
                          ),
                          Container(
                            width: 145/3.6*boxSizeH,
                            height: 180/6.4*boxSizeV,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Color(0xffFFBAB2),
                              ),
                              borderRadius:
                              BorderRadius.all(Radius.circular(20.0) //
                              ),
                              color: Color(0xffFFBAB2),
                            ),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 10/6.4*boxSizeV,
                                ),
                            Container(
                            width: 123/3.6*boxSizeH,
                              height: 107/6.4*boxSizeV,
                            child: FittedBox(
                              fit: BoxFit.fill,
                              child: Image.asset('images/MedicineDelivery.png'),
                            ),),
                            SizedBox(
                              height: 5/6.4*boxSizeV,
                            ),
                            GestureDetector(
                              onTap: (){
                                Navigator.push(
                                  context, MaterialPageRoute(builder: (context)=>MedsScreen(),)
                                  ,);
                              },
                              child: Container(
                                width: 134/3.6*boxSizeH,
                                height: 45/6.4*boxSizeV,

                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Color(0xff950808),
                                  ),
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(20.0) //
                                  ),
                                  color: Color(0xff950808),
                                ),
                                child: Padding(
                                  padding:  EdgeInsets.only(
                                    top: 10/6.4*boxSizeV,
                                  ),
                                  child: Text(
                                    'Order medicines',
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18.0,
                                      color: Colors.white
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      ]
                  ),
                ),
              ),
             Container(
               margin: EdgeInsets.only(
                 top: 20/6.4*boxSizeV,
                 left: 20/3.6*boxSizeH,
                 right: 20/3.6*boxSizeH,
               ),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Row(
                     children: [
                       CircleAvatar(
                         radius: 25.0,
                         backgroundColor: Color(0xff407BFF),
                         child: Icon(FontAwesomeIcons.quoteLeft,
                         color: Colors.white,),
                       ),
                       SizedBox(
                         width: 15/3.6*boxSizeH,
                       ),
                       Text(
                         'It’s Not Whether You Get Knocked\nDown, It’s Whether You Get Up.',
                         style: GoogleFonts.poppins(
                           fontSize: 16.0,
                           fontWeight: FontWeight.w600,
                           color: Color(0xff407BFF)
                         ),
                       ),
                     ],
                   ),
                   SizedBox(
                     height: 10/6.4*boxSizeV,
                   ),
                   Text('Activities for you',
                     style: GoogleFonts.poppins(
                         fontWeight: FontWeight.w500,
                         fontSize: 18.0,
                         color: Color(0xff2C4C75)
                     ),
                   ),
                   SizedBox(
                     height: 10/6.4*boxSizeV,
                   ),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Container(
                         width: 95/3.6*boxSizeH,
                         height: 95/6.4*boxSizeV,
                         decoration:BoxDecoration(
                           color: Colors.white,
                           borderRadius:
                           BorderRadius.all(
                              Radius.circular(20.0),
                             //
                           ),
                       ),
                         child: Column(
                           children: [
                             SizedBox(
                               height: 3/6.4*boxSizeV,
                             ),
                             Container(
                               width: 79/3.6*boxSizeH,
                               height: 67/6.4*boxSizeV,
                               child:   FittedBox(
                                 fit: BoxFit.fill,
                                   child: Image.asset('images/movies.png')),
                             ),
                         Text('Movies',
                           style: GoogleFonts.poppins(
                               fontWeight: FontWeight.w600,
                               fontSize: 17.0,
                               color: Color(0xff2C4C75)
                           ),
                         ),
                           ],
                         ),
                       ),
                       Container(
                         width: 95/3.6*boxSizeH,
                         height: 95/6.4*boxSizeV,
                         decoration:BoxDecoration(
                           color: Colors.white,
                           borderRadius:
                           BorderRadius.all(
                             Radius.circular(20.0),
                             //
                           ),
                         ),
                         child: Column(
                           children: [
                             SizedBox(
                               height: 3/6.4*boxSizeV,
                             ),
                             Container(
                               width: 69/3.6*boxSizeH,
                               height: 65/6.4*boxSizeV,
                               child:   FittedBox(
                                   fit: BoxFit.fill,
                                   child: Image.asset('images/music.png')),
                             ),
                             Text('Music',
                               style: GoogleFonts.poppins(
                                   fontWeight: FontWeight.w600,
                                   fontSize: 17.0,
                                   color: Color(0xff01B399),
                               ),
                             ),

                           ],
                         ),
                       ),
                       Container(
                         width: 95/3.6*boxSizeH,
                         height: 95/6.4*boxSizeV,
                         decoration:BoxDecoration(
                           color: Colors.white,
                           borderRadius:
                           BorderRadius.all(
                             Radius.circular(20.0),
                             //
                           ),
                         ),
                         child: Column(
                           children: [
                             SizedBox(
                               height: 3/6.4*boxSizeV,
                             ),
                         GestureDetector(
                           onTap: (){
                             Navigator.push(
                               context, MaterialPageRoute(builder: (context)=>Activities(),)
                               ,);
                           },
                           child: Container(
                           width: 69/3.6*boxSizeH,
                             height: 65/6.4*boxSizeV,
                             child:   FittedBox(
                                 fit: BoxFit.fill,
                                 child: Image.asset('images/games.png')),

                       ),
                         ),
                             Text('Games',
                               style: GoogleFonts.poppins(
                                 fontWeight: FontWeight.w600,
                                 fontSize: 17.0,
                                 color: Color(0xffFA9746),
                               ),
                             ),
                     ],
                   )











               ),
          ]
             ),
                   SizedBox(
                     height: 10/6.4*boxSizeV,
                   ),
                   Align(
                     alignment: Alignment.center,
                     child: GestureDetector(
                       onTap: (){
                         Navigator.push(
                           context, MaterialPageRoute(builder: (context)=>SanitizationPage(),)
                           ,);
                       },
                       child: Container(
                         width: 248/3.6*boxSizeH,
                         height: 40/6.4*boxSizeV,
                         decoration: BoxDecoration(
                           border: Border.all(
                             color: Color(0xffB9D7FF),
                           ),
                           borderRadius:
                           BorderRadius.all(Radius.circular(20.0) //
                           ),
                           color: Color(0xffB9D7FF),
                         ),
                         child: Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Text(
                             'Put Sanitization Request',
                             style: GoogleFonts.poppins(
                               color: Color(0xff102253),
                               fontSize:21.0,
                               fontWeight: FontWeight.w600,
                             ),
                             textAlign: TextAlign.center,
                           ),
                         ),
                       ),
                     ),
                   ),


            ],
          ),
      ),
          ]
      ),
        ),
    ),

    ),

    );
  }
}
