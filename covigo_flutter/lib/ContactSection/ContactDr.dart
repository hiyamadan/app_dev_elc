
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Variables.dart';
import '../WidgetResizing.dart';
import 'package:covigo/ControlScreen.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher.dart'as UrlLauncher;
class ContactDr extends StatefulWidget {
  @override
  _ContactDrState createState() => _ContactDrState();
}

class _ContactDrState extends State<ContactDr> {




  @override
  Widget build(BuildContext context) {
    String mobileno='9856471532';
    String emailid='abc@gmail.com';
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
                SizedBox(
                  width: 50/3.6*boxSizeH,
                ),

                Text(
                  'Contact a Doctor',
                  style:GoogleFonts.poppins(
                    fontSize: 27,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ) ,
                ),
                // Container(
                //     width: 20/3.6*boxSizeH,
                //     height: 20/6.4*boxSizeV,
                //     child:Icon(FontAwesomeIcons.userNurse,
                //       color: Colors.white,) )
              ],
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              width: 240/3.6*boxSizeH,
              height: 180/6.4*boxSizeV,
              margin: EdgeInsets.only(
                top: 20/6.4*boxSizeV,

              ),
              child: Image.asset('images/ContactDr.png'),
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
    'Below is a contact list of doctors who are always available to help you. ',
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
        child: Padding(
          padding:  EdgeInsets.only(
            left: 20/3.6*boxSizeH,
            right: 20/3.6*boxSizeH
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10/6.4*boxSizeV,
              ),
              Text(
                'Dr. Raj Singh (MBBS,MD)',
                style: GoogleFonts.poppins(
                    fontSize: 21.0,
                    color: Color(0xff000000),
                    fontWeight: FontWeight.w500
                ),
              ),
              SizedBox(
                height: 5/6.4*boxSizeV,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
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
                    width: 4/3.6*boxSizeH,
                  ),
                  GestureDetector(
                    onTap:    (){
                      dial(mobileno);
                    },
                    child: Text(
                      mobileno,
                      style: GoogleFonts.poppins(
                          fontSize: 17.0,
                          color: Color(0xff2C4C75),
                          fontWeight: FontWeight.w500
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 5/6.4*boxSizeV,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 22/3.6*boxSizeH,
                    height: 22/6.4*boxSizeV,
                    child: FittedBox(
                      fit: BoxFit.fill,
                      child: Icon(
                          Icons.email_rounded,
                          color: Color(0xff2C4C75)),
                    ),
                  ),
                  SizedBox(
                    width: 4/3.6*boxSizeH,
                  ),
                  GestureDetector(
                    onTap:    (){
                      mail(emailid);
                    },
                    child: Text(
                     emailid,
                      style: GoogleFonts.poppins(
                          fontSize: 17.0,
                          color: Color(0xff2C4C75),
                          fontWeight: FontWeight.w500
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10/6.4*boxSizeV,
              ),
              Row(
                children: [
                  GestureDetector(

                    child: Container(
                      width: 130/3.6*boxSizeH,
                      height: 20/6.4*boxSizeV,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.white,
                        ),
                        borderRadius:
                        BorderRadius.all(Radius.circular(25.0) //
                        ),
                        color: Color(0xff001448),),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 2/3.6*boxSizeH,
                          ),
                          Icon(Icons.chat,color: Colors.white,
                          size: 20.0,),
                          SizedBox(
                            width: 2/3.6*boxSizeH,
                          ),
                          Text(
                            'Chat with us now',
                            style: GoogleFonts.poppins(
                              fontSize: 14.0,
                              color: Colors.white,
                              fontWeight: FontWeight.w300,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5/3.6*boxSizeH,
                  ),
                  GestureDetector(
                    child: Container(
                      width: 134/3.6*boxSizeH,
                      height: 20/6.4*boxSizeV,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.white,
                        ),
                        borderRadius:
                        BorderRadius.all(Radius.circular(25.0) //
                        ),
                        color: Color(0xff001448),),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 2/3.6*boxSizeH,
                          ),
                          Icon(
                            Icons.videocam,
                            color: Colors.white,
                          size: 20.0,),
                          SizedBox(
                            width: 2/3.6*boxSizeH,
                          ),
                          Text(
                            'Video Consultation',
                            style: GoogleFonts.poppins(
                              fontSize: 14.0,
                              color: Colors.white,
                              fontWeight: FontWeight.w300,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      SizedBox(
        height: 10/6.4*boxSizeV,
      ),
              Container(
                height: 140/6.4*boxSizeV,
                width: 313/3.6*boxSizeH,

                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xffA1EEF3),
                  ),
                  borderRadius:
                  BorderRadius.all(Radius.circular(25.0), //
                  ),
                  color: Color(0xffA1EEF3),
                ),
                child: Padding(
                  padding:  EdgeInsets.only(
                      left: 20/3.6*boxSizeH,
                      right: 20/3.6*boxSizeH
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 10/6.4*boxSizeV,
                      ),
                      Text(
                        'Dr. Raj Singh (MBBS,MD)',
                        style: GoogleFonts.poppins(
                            fontSize: 21.0,
                            color: Color(0xff000000),
                            fontWeight: FontWeight.w500
                        ),
                      ),
                      SizedBox(
                        height: 5/6.4*boxSizeV,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
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
                            width: 4/3.6*boxSizeH,
                          ),
                          GestureDetector(
                            onTap:    (){
                              dial(mobileno);
                            },
                            child: Text(
                              mobileno,
                              style: GoogleFonts.poppins(
                                  fontSize: 17.0,
                                  color: Color(0xff2C4C75),
                                  fontWeight: FontWeight.w500
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 5/6.4*boxSizeV,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: 22/3.6*boxSizeH,
                            height: 22/6.4*boxSizeV,
                            child: FittedBox(
                              fit: BoxFit.fill,
                              child: Icon(
                                  Icons.email_rounded,
                                  color: Color(0xff2C4C75)),
                            ),
                          ),
                          SizedBox(
                            width: 4/3.6*boxSizeH,
                          ),
                          GestureDetector(
                            onTap:    (){
                              mail(emailid);
                            },

                            child: Text(
                             emailid,
                              style: GoogleFonts.poppins(
                                  fontSize: 17.0,
                                  color: Color(0xff2C4C75),
                                  fontWeight: FontWeight.w500
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10/6.4*boxSizeV,
                      ),
                      Row(
                        children: [
                          GestureDetector(
                            // onTap: (){
                            //   Navigator.push(
                            //     context, MaterialPageRoute(builder: (context)=>MedicinePayment(),)
                            //     ,);
                            // },
                            child: Container(
                              width: 130/3.6*boxSizeH,
                              height: 20/6.4*boxSizeV,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.white,
                                ),
                                borderRadius:
                                BorderRadius.all(Radius.circular(25.0) //
                                ),
                                color: Color(0xff001448),),
                              child:  Row(
                                children: [
                                  SizedBox(
                                    width: 2/3.6*boxSizeH,
                                  ),
                                  Icon(Icons.chat,color: Colors.white,
                                    size: 20.0,),
                                  SizedBox(
                                    width: 2/3.6*boxSizeH,
                                  ),
                                  Text(
                                    'Chat with us now',
                                    style: GoogleFonts.poppins(
                                      fontSize: 14.0,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w300,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 5/3.6*boxSizeH,
                          ),
                          GestureDetector(
                            // onTap: (){
                            //   Navigator.push(
                            //     context, MaterialPageRoute(builder: (context)=>MedicinePayment(),)
                            //     ,);
                            // },
                            child: Container(
                              width: 134/3.6*boxSizeH,
                              height: 20/6.4*boxSizeV,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.white,
                                ),
                                borderRadius:
                                BorderRadius.all(Radius.circular(25.0) //
                                ),
                                color: Color(0xff001448),),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 2/3.6*boxSizeH,
                                  ),
                                  Icon(
                                    Icons.videocam,
                                    color: Colors.white,
                                    size: 20.0,),
                                  SizedBox(
                                    width: 2/3.6*boxSizeH,
                                  ),
                                  Text(
                                    'Video Consultation',
                                    style: GoogleFonts.poppins(
                                      fontSize: 14.0,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w300,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
      SizedBox(
        height: 10/6.4*boxSizeV,
      ),
      Container(
        height: 140/6.4*boxSizeV,
        width: 313/3.6*boxSizeH,

        decoration: BoxDecoration(
          border: Border.all(
            color: Color(0xffC1FEF6),
          ),
          borderRadius:
          BorderRadius.all(Radius.circular(25.0), //
          ),
          color: Color(0xffC1FEF6),
        ),
        child: Padding(
          padding:  EdgeInsets.only(
              left: 20/3.6*boxSizeH,
              right: 20/3.6*boxSizeH
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10/6.4*boxSizeV,
              ),
              Text(
                'Dr. Raj Singh (MBBS,MD)',
                style: GoogleFonts.poppins(
                    fontSize: 21.0,
                    color: Color(0xff000000),
                    fontWeight: FontWeight.w500
                ),
              ),
              SizedBox(
                height: 5/6.4*boxSizeV,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
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
                    width: 4/3.6*boxSizeH,
                  ),
                  GestureDetector(
                    onTap:    (){
                      dial(mobileno);
                    },
                    child: Text(
                      mobileno,
                      style: GoogleFonts.poppins(
                          fontSize: 17.0,
                          color: Color(0xff2C4C75),
                          fontWeight: FontWeight.w500
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 5/6.4*boxSizeV,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 22/3.6*boxSizeH,
                    height: 22/6.4*boxSizeV,
                    child: FittedBox(
                      fit: BoxFit.fill,
                      child: Icon(
                          Icons.email_rounded,
                          color: Color(0xff2C4C75)),
                    ),
                  ),
                  SizedBox(
                    width: 4/3.6*boxSizeH,
                  ),
                  GestureDetector(
                    onTap:    (){
                      mail(emailid);
                    },
                    child: Text(
                     emailid,
                      style: GoogleFonts.poppins(
                          fontSize: 17.0,
                          color: Color(0xff2C4C75),
                          fontWeight: FontWeight.w500
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10/6.4*boxSizeV,
              ),
              Row(
                children: [
                  GestureDetector(
                    // onTap: (){
                    //   Navigator.push(
                    //     context, MaterialPageRoute(builder: (context)=>MedicinePayment(),)
                    //     ,);
                    // },
                    child: Container(
                      width: 130/3.6*boxSizeH,
                      height: 20/6.4*boxSizeV,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.white,
                        ),
                        borderRadius:
                        BorderRadius.all(Radius.circular(20.0) //
                        ),
                        color: Color(0xff001448),),
                      child:  Row(
                        children: [
                          SizedBox(
                            width: 2/3.6*boxSizeH,
                          ),
                          Icon(Icons.chat,color: Colors.white,
                            size: 20.0,),
                          SizedBox(
                            width: 2/3.6*boxSizeH,
                          ),
                          Text(
                            'Chat with us now',
                            style: GoogleFonts.poppins(
                              fontSize: 14.0,
                              color: Colors.white,
                              fontWeight: FontWeight.w300,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5/3.6*boxSizeH,
                  ),
                  GestureDetector(
                    // onTap: (){
                    //   Navigator.push(
                    //     context, MaterialPageRoute(builder: (context)=>MedicinePayment(),)
                    //     ,);
                    // },
                    child: Container(
                      width: 134/3.6*boxSizeH,
                      height: 20/6.4*boxSizeV,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.white,
                        ),
                        borderRadius:
                        BorderRadius.all(Radius.circular(20.0) //
                        ),
                        color: Color(0xff001448),),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 2/3.6*boxSizeH,
                          ),
                          Icon(
                            Icons.videocam,
                            color: Colors.white,
                            size: 20.0,),
                          SizedBox(
                            width: 2/3.6*boxSizeH,
                          ),
                          Text(
                            'Video Consultation',
                            style: GoogleFonts.poppins(
                              fontSize: 14.0,
                              color: Colors.white,
                              fontWeight: FontWeight.w300,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ]
    ),

    )
          ]
    ),

        ]
    )

      )
      ),
    )

    );
  }


void dial(String phoneNumber) async {
  String url='tel:'+phoneNumber;
  if (await canLaunch(url)) {
    await UrlLauncher.launch(url);
  } else {
    throw "Could not launch $url";
  }
}

void mail(String mailid) async{
  if (await canLaunch(mailid)) {
    await UrlLauncher.launch("mailto:${mailid}");
  } else {
    throw "Could not launch $mailid";
  }
}
}
