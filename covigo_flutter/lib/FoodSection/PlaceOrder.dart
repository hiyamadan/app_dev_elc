
import 'package:covigo/ContactSection/ContactDr.dart';
import 'package:covigo/FoodSection/PaymentPage.dart';
import 'package:flutter/material.dart';
import 'package:covigo/Variables.dart';
import 'package:covigo/WidgetResizing.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../ControlScreen.dart';
class PlaceOrder extends StatefulWidget {
  @override
  _PlaceOrderState createState() => _PlaceOrderState();
}

class _PlaceOrderState extends State<PlaceOrder> {
  TextEditingController _mealsNoController;
  TextEditingController _addressController;
  TextEditingController _phoneNoController;
  FocusNode _addressnode;
  FocusNode _mealnode;
  FocusNode _phoneNode;
  @override
  void initState() {
    _mealsNoController = TextEditingController();
    _mealnode = FocusNode();
    _addressController=TextEditingController();
    _addressnode=FocusNode();
    _phoneNoController=TextEditingController();
    _phoneNode=FocusNode();
    super.initState();
  }

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
          child: Text(
            'Place Order',
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
    ,);},
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

      color: Color(0xffFFEBE8),
      child: Container(
        margin: EdgeInsets.only(
          left: 20/3.6*boxSizeH,
          right: 20/3.6*boxSizeH,
          top: 10/6.4*boxSizeV,
          bottom: 10/6.4*boxSizeV,
      ),
        child: SingleChildScrollView(
          child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10/6.4*boxSizeV,
              ),
              Text(
                'Hello! Tanya. \nWith utmost safety we are providing home made healthy meals for covid patients at their door step.',
                style: GoogleFonts.poppins(
                  fontSize: 19,
                  color: Color(0xff001448),
                  fontWeight: FontWeight.w400,
                ) ,
              ),
              SizedBox(
                height: 10/6.4*boxSizeV,
              ),
              Text(
                'To keep the entire process contact\nless only online payment is availabe',
                style: GoogleFonts.poppins(
                  fontSize: 19,
                  color: Color(0xff950808),
                  fontWeight: FontWeight.w400,
                ) ,
              ),
              SizedBox(
                height: 10/6.4*boxSizeV,
              ),
              Container(
                width: 314/3.6*boxSizeH,
                height: 384/6.4*boxSizeV,
                 decoration: BoxDecoration(
                     border: Border.all(
                       color: Color(0x407AB4FF),
                     ),
                     borderRadius:
                     BorderRadius.all(Radius.circular(15.0) //
                     ),
                   color: Color(0x407AB4FF),
              ),
                child: Padding(
                  padding:  EdgeInsets.only(
                    left: 20/3.6* boxSizeH,
                    right: 20/3.6* boxSizeH,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 20/6.4*boxSizeV,
                      ),
                      Text('No. of meals',
                        style: GoogleFonts.poppins(
                          fontSize: 23,
                          color: Color(0xff2C4C75),
                          fontWeight: FontWeight.w600,
                        ) ,
                      ),
                      Text('Each meal serves 1 person',
                        style: GoogleFonts.poppins(
                          fontSize: 17,
                          color: Color(0xff2C4C75),
                          fontWeight: FontWeight.w400,
                        ) ,
                      ),
                      SizedBox(
                        height: 6/6.4*boxSizeV,
                      ),
                      Container(
                        width: 263/3.6*boxSizeH,
                        height: 26/6.4*boxSizeV,
                        child: TextField(
                          focusNode: _mealnode,
                          controller: _mealsNoController,
                          keyboardType: TextInputType.number,
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 20.0,
                          ),
                          cursorColor: Color(0xff2C4C75) ,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
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
                      Text('Address',
                        style: GoogleFonts.poppins(
                          fontSize: 23,
                          color: Color(0xff2C4C75),
                          fontWeight: FontWeight.w600,
                        ) ,
                      ),
                      SizedBox(
                        height: 10/6.4*boxSizeV,
                      ),
                      Container(
                        width: 263/3.6*boxSizeH,
                        height: 66/6.4*boxSizeV,
                        child: TextField(
                          focusNode: _addressnode,
                          controller: _addressController,
                          maxLines: 3,
                          keyboardType: TextInputType.text,
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 20.0,
                          ),
                          cursorColor: Color(0xff2C4C75) ,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
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
                      Text('Phone Number',
                        style: GoogleFonts.poppins(
                          fontSize: 23,
                          color: Color(0xff2C4C75),
                          fontWeight: FontWeight.w600,
                        ) ,
                      ),
                      Text('(preferably whatsapp)',
                        style: GoogleFonts.poppins(
                          fontSize: 23,
                          color: Color(0xff2C4C75),
                          fontWeight: FontWeight.w300,
                        ) ,
                      ),
                      SizedBox(
                        height: 6/6.4*boxSizeV,
                      ),
                      Container(
                        width: 263/3.6*boxSizeH,
                        height: 26/6.4*boxSizeV,
                        child: TextField(
                          focusNode: _phoneNode,
                          controller: _phoneNoController,
                          keyboardType: TextInputType.number,
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 20.0,
                          ),
                          cursorColor: Color(0xff2C4C75) ,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
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
                        height: 15/6.4*boxSizeV,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: GestureDetector(
                         onTap: (){
                      Navigator.push(
                      context, MaterialPageRoute(builder: (context)=>PaymentPage(),)
                      ,);
                      },
                          child: Container(
                            width: 256/3.6*boxSizeH,
                            height: 38/6.4*boxSizeV,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.white,
                              ),
                              borderRadius:
                              BorderRadius.all(Radius.circular(25.0) //
                              ),
                              color: Color(0xff001448),),
                            child: Text(
                              'Proceed to Payment',
                              style: GoogleFonts.poppins(
                                fontSize: 23.0,
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
    ),
    );
  }
}
