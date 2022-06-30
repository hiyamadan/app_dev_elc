import 'package:covigo/ContactSection/ContactDr.dart';
import 'package:covigo/ControlScreen.dart';
import 'package:covigo/FoodSection/PlaceOrder.dart';
import 'package:covigo/Sanitization/SanitizationRequest.dart';
import 'package:covigo/TrashSection/TrashRequest.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import '../Variables.dart';
import 'package:intl/intl.dart';
import '../WidgetResizing.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart'as UrlLauncher;

class TrashPage extends StatefulWidget {
  @override
  _TrashPageState createState() => _TrashPageState();
}

class _TrashPageState extends State<TrashPage> {
  TextEditingController _phoneController=TextEditingController();
  FocusNode _phoneNode=FocusNode();
  TextEditingController _addressController=TextEditingController();
  FocusNode _addressNode=FocusNode();
  DateTime _selectedDate;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    boxSizeH = SizeConfig.safeBlockHorizontal;
    boxSizeV = SizeConfig.safeBlockVertical;
    return SafeArea(child: Scaffold(
        body: Container(
            width: double.infinity,
            height: double.infinity,
            color: Color(0xffDFF2FF),
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
                                    'Trash Pickup',
                                    style:GoogleFonts.poppins(
                                      fontSize: 27,
                                      color: Color(0xffDFF2FF),
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
                                          color: Color(0xffDFF2FF),) ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              width: 290/3.6*boxSizeH,
                              height: 180/6.4*boxSizeV,
                              margin: EdgeInsets.only(
                                top: 20/6.4*boxSizeV,
                                left: 30/3.6*boxSizeH,
                              ),
                              child: Image.asset('images/TrashPickup.png'),
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
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Hello! Tanya. \nYou can put a request for home sanitization',
                                  style: GoogleFonts.poppins(
                                    fontSize: 19,
                                    color: Color(0xff001448),
                                    fontWeight: FontWeight.w500,
                                  ) ,
                                ),
                                Text(
                                  '*No charges applied',
                                  style: GoogleFonts.poppins(
                                    fontSize: 19,
                                    color: Color(0xffF60B0B),
                                    fontWeight: FontWeight.w500,
                                  ) ,
                                ),
                                SizedBox(
                                  height: 10/6.4*boxSizeV,
                                ),
                                Container(
                                  width: 325/3.6*boxSizeH,
                                  height: 240/6.4*boxSizeV,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Color(0xffC2D4FA),
                                    ),
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(25.0) //
                                    ),
                                    color: Color(0xffC2D4FA),),
                                  child: Padding(
                                    padding:  EdgeInsets.only(
                                      left: 10/3.6*boxSizeH,
                                      right: 10/3.6*boxSizeH,
                                      top: 10/6.4*boxSizeV,
                                      bottom: 10/6.4*boxSizeV,
                                    ),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('Contact Number',
                                          style: GoogleFonts.poppins(
                                            fontSize: 19,
                                            color: Color(0xff001448),
                                            fontWeight: FontWeight.w600,
                                          ) ,
                                        ),
                                        SizedBox(
                                          height: 5/6.4*boxSizeV,
                                        ),
                                        Container(
                                          width: 290/3.6*boxSizeH,
                                          height: 26/6.4*boxSizeV,
                                          child: TextField(
                                            focusNode: _phoneNode,
                                            controller: _phoneController,
                                            keyboardType: TextInputType.text,
                                            style: TextStyle(
                                              color: Color(0xff2C4C75) ,
                                              fontSize: 20.0,
                                            ),
                                            cursorColor: Color(0xff2C4C75) ,
                                            decoration: InputDecoration(
                                              filled: true,
                                              fillColor: Color(0xffDFF2FF),
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(Radius.circular(25.0)),
                                                borderSide: BorderSide(
                                                  color: Colors.white,
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
                                        SizedBox(
                                          height: 10/6.4*boxSizeV,
                                        ),
                                        Text('Home Address',
                                          style: GoogleFonts.poppins(
                                            fontSize: 19,
                                            color: Color(0xff001448),
                                            fontWeight: FontWeight.w600,
                                          ) ,
                                        ),
                                        SizedBox(
                                          height: 5/6.4*boxSizeV,
                                        ),
                                        Container(
                                          width: 290/3.6*boxSizeH,
                                          height: 26/6.4*boxSizeV,
                                          child: TextField(
                                            focusNode: _addressNode,
                                            controller: _addressController,
                                            keyboardType: TextInputType.text,
                                            style: TextStyle(
                                              color: Color(0xff2C4C75) ,
                                              fontSize: 20.0,
                                            ),
                                            cursorColor: Color(0xff2C4C75) ,
                                            decoration: InputDecoration(
                                              filled: true,
                                              fillColor: Color(0xffDFF2FF),
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(Radius.circular(25.0)),
                                                borderSide: BorderSide(
                                                  color: Colors.white,
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
                                        SizedBox(
                                          height: 10/6.4*boxSizeV,
                                        ),
                                        Column(
                                          children: [
                                            Text('Date',
                                              style: GoogleFonts.poppins(
                                                fontSize: 19,
                                                color: Color(0xff001448),
                                                fontWeight: FontWeight.w600,
                                              ) ,
                                            ),
                                            GestureDetector(
                                              child: Container(
                                                width: 290/3.6*boxSizeH,
                                                height: 26/6.4*boxSizeV,
                                                decoration: BoxDecoration(
                                                  color: Color(0xffDFF2FF),
                                                  borderRadius:BorderRadius.all(Radius.circular(20.0)),
                                                  border: Border.all(
                                                    color: Colors.white,
                                                  ),
                                                ),
                                                child: Row(
                                                  children: [
                                                    SizedBox(
                                                      width: 5/3.6*boxSizeH,
                                                    ),
                                                    Icon(FontAwesomeIcons.calendar),
                                                    SizedBox(
                                                      width: 5/3.6*boxSizeH,
                                                    ),
                                                    Text(
                                                      _selectedDate == null //ternary expression to check if date is null
                                                          ? ''
                                                          : ' ${DateFormat.yMMMd().format(_selectedDate)}',
                                                      style: TextStyle(
                                                        color: Color(0xff2C4C75) ,
                                                        fontSize: 20.0,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              onTap: (){
                                                showModalBottomSheet(
                                                    context: context,
                                                    builder: (BuildContext builder) {
                                                      return Container(
                                                          height: MediaQuery.of(context).copyWith().size.height / 3,
                                                          child: CupertinoDatePicker(
                                                            initialDateTime: DateTime.now(),
                                                            onDateTimeChanged: (DateTime newdate) {
                                                              setState(() {
                                                                _selectedDate=newdate;
                                                              });

                                                            },
                                                            use24hFormat: true,
                                                            maximumDate: DateTime.now(),
                                                            minimumYear: 2020,
                                                            maximumYear: 2021,

                                                            mode: CupertinoDatePickerMode.date,
                                                          ));
                                                    });
                                              } ,
                                            ),
                                          ],
                                        ),


                                        SizedBox(
                                          height: 10/6.4*boxSizeV,
                                        ),
                                        GestureDetector(
                                          child: Align(
                                            alignment: Alignment.center,
                                            child: Container(
                                              width: 170/3.6*boxSizeH,
                                              height: 34/6.4*boxSizeV,
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                  color: Color(0xff4951EC),
                                                ),
                                                borderRadius:
                                                BorderRadius.all(Radius.circular(25.0) //
                                                ),
                                                color: Color(0xff4951EC),),
                                              child: Padding(
                                                padding:  EdgeInsets.only(
                                                    top: 6/6.4*boxSizeV
                                                ),
                                                child: Text(
                                                  'Submit Request',
                                                  style: GoogleFonts.poppins(
                                                    fontSize: 19.0,
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                  textAlign: TextAlign.center,
                                                ),
                                              ),
                                            ),
                                          ),
                                          onTap: (){
                                            Navigator.push(
                                              context, MaterialPageRoute(builder: (context)=> TrashRequest(),)
                                              ,);
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                ),

                                SizedBox(
                                  height: 20/6.4*boxSizeV,
                                ),
                              ]
                          )
                      )
                    ]
                )
            )
        )
    ),
    );
  }
}