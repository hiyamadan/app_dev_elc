
import 'package:covigo/ContactSection/ContactDr.dart';
import 'package:covigo/FoodSection/OrderConfirmed.dart';
import 'package:flutter/material.dart';
import 'package:covigo/Variables.dart';
import 'package:covigo/WidgetResizing.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../ControlScreen.dart';
class PaymentPage extends StatefulWidget {
  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  TextEditingController _bankController;
  TextEditingController _cardNoController;
  TextEditingController _tokenController;
  FocusNode _banknode;
  FocusNode _cardnode;
  FocusNode _tokennode;
  @override
  void initState() {
    _bankController = TextEditingController();
    _cardnode = FocusNode();
    _cardNoController=TextEditingController();
    _banknode=FocusNode();
    _tokenController=TextEditingController();
    _tokennode=FocusNode();
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
          'Payment',
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
          children: [
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
            Padding(
              padding:  EdgeInsets.only(
                left: 30/3.6*boxSizeH,
                right: 30/3.6*boxSizeH,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  SizedBox(
                    height: 20/6.4*boxSizeV,
                  ),
                  Text('Select Bank',
                    style: GoogleFonts.poppins(
                      fontSize: 19,
                      color: Color(0xff2C4C75),
                      fontWeight: FontWeight.w600,
                    ) ,
                  ),
                  SizedBox(
                    height: 6/6.4*boxSizeV,
                  ),
                  Container(
                    width: 263/3.6*boxSizeH,
                    height: 26/6.4*boxSizeV,
                    child: TextField(
                      focusNode: _banknode,
                      controller: _bankController,
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
                  Text('Card Number',
                    style: GoogleFonts.poppins(
                      fontSize: 19,
                      color: Color(0xff2C4C75),
                      fontWeight: FontWeight.w600,
                    ) ,
                  ),
                  SizedBox(
                    height: 6/6.4*boxSizeV,
                  ),
                  Container(
                    width: 263/3.6*boxSizeH,
                    height: 26/6.4*boxSizeV,
                    child: TextField(
                      focusNode: _cardnode,
                      controller: _cardNoController,
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
                  Text('Enter CVV',
                    style: GoogleFonts.poppins(
                      fontSize: 19,
                      color: Color(0xff2C4C75),
                      fontWeight: FontWeight.w600,
                    ) ,
                  ),
                  SizedBox(
                    height: 6/6.4*boxSizeV,
                  ),
                  Container(
                    width: 263/3.6*boxSizeH,
                    height: 26/6.4*boxSizeV,
                    child: TextField(
                      focusNode: _tokennode,
                      controller: _tokenController,
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
                    height: 20/6.4*boxSizeV,
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context, MaterialPageRoute(builder: (context)=>OrderConfirmed(),)
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
                        'Make Payment',
                        style: GoogleFonts.poppins(
                          fontSize: 23.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                        textAlign: TextAlign.center,
                      ),

                    ),
                  ),

              ],
              ),
            ),
            SizedBox(
              height: 20/6.4*boxSizeV,
            ),
            Container(
              width: 360/3.6*boxSizeH,
              height: 208/6.4*boxSizeV,
              child: Image.asset('images/PaymentPic.png'),
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
