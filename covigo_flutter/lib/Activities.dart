import 'package:covigo/ContactSection/ContactDr.dart';
import 'package:covigo/ControlScreen.dart';

import 'Variables.dart';
import 'WidgetResizing.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart'as UrlLauncher;

class Activities extends StatefulWidget {
  @override
  _ActivitiesState createState() => _ActivitiesState();
}

class _ActivitiesState extends State<Activities> {
  int movieindex=0;
  int musicindex=0;
  int gameindex=0;
  int  bookindex=0;
 List<String> movies=[
   'Avengers',
   'Fault in our stars',
   'Tenet',
   'Dicatator',
   'Avengers',
   'Fault in our stars',
   'Tenet',
   'Dicatator',

 ];
 List<String> music=[
   'Tough Love',
   'Saving Grace',
   'Nights',
   'Night Changes',
   'Perfect',
   'Tough Love',
   'Saving Grace',
   'Nights',
   'Night Changes',
   'Perfect',
 ];
 List<String> books=[
   'Alchemist',
   'Fault in our stars',
   'Chanakya Chant',
   'Dairy of a Wimpy Kid',
   'Alchemist',
   'Fault in our stars',
   'Chanakya Chant',
   'Dairy of a Wimpy Kid',
 ];
 List<String> games=[''
     'Pictionary',
   'Among Us',
   'Valorant',
   'Pysch',
   'Gartic.io',
   'Candy Crush',
   'Ludo',
   'Pictionary',
   'Among Us',
   'Valorant',
   'Pysch',
   'Gartic.io',
   'Candy Crush',
   'Ludo',
 ];
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
                  'Activities',
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
                        color: Color(0xffF7E1CC),) ),
                )
              ],
            ),
          ),
          Container(
            width: 300/3.6*boxSizeH,
            height: 180/6.4*boxSizeV,
            margin: EdgeInsets.only(
              top: 20/6.4*boxSizeV,
              left: 30/3.6*boxSizeH,
            ),
            child: FittedBox(
              fit: BoxFit.fill,
                child: Image.asset('images/Activities.png')),
          ),


        ],
      ),
    ),
        SizedBox(
          height: 15/6.4*boxSizeV,
        ),
        Container(
          height: 140/6.4*boxSizeV,
          width: 313/3.6*boxSizeH,
          decoration: BoxDecoration(
            border: Border.all(
              color: Color(0xffC2D4FA),
            ),
            borderRadius:
            BorderRadius.all(Radius.circular(25.0), //
            ),
            color: Color(0xffC2D4FA),
          ),
          child: Padding(
            padding:  EdgeInsets.only(
              left: 15/3.6*boxSizeH,
              right: 15/3.6*boxSizeH,
              top: 10/6.4*boxSizeV,
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(Icons.local_movies_outlined,
                      color:Colors.black ,),
               SizedBox(
            width: 10/3.6*boxSizeH,
          ),
                    Text(
                      'Movies you can watch',
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 15/6.4*boxSizeV,
                ),
                Container(
                  height: 30/6.4*boxSizeV,
                  width: 300/3.6*boxSizeH,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.white,
                    ),
                    borderRadius:
                    BorderRadius.all(Radius.circular(25.0), //
                    ),
                    color: Colors.white,
                  ),
                 child: Row(
                   children: [
                     SizedBox(
                       width: 10/3.6*boxSizeH,
                     ),
                     Text(
                        movies[movieindex+1],
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                        ),

                      ),
                   ],
                 ),
                ),
                SizedBox(
                  height: 10/6.4*boxSizeV,
                ),
                Container(
                  height: 30/6.4*boxSizeV,
                  width: 300/3.6*boxSizeH,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.white,
                    ),
                    borderRadius:
                    BorderRadius.all(Radius.circular(25.0), //
                    ),
                    color: Colors.white,
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10/3.6*boxSizeH,
                      ),
                      Text(
                        movies[movieindex],
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                      ),
                ),
                    ],
                  ),
                ),
                GestureDetector(
                    onTap: (){
                      setState(() {
                        if(movieindex>6)
                          movieindex=0;
                        else
                        movieindex+=1;
                      });
                    },
                    child: Icon(Icons.arrow_drop_down,color: Colors.black,))
              ],
            ),
          ),
        ),
        SizedBox(
          height: 15/6.4*boxSizeV,
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
              left: 15/3.6*boxSizeH,
              right: 15/3.6*boxSizeH,
              top: 10/6.4*boxSizeV,
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(Icons.queue_music_outlined,
                      color:Colors.black ,),
                    SizedBox(
                      width: 10/3.6*boxSizeH,
                    ),
                    Text(
                      'Songs you may like',
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 15/6.4*boxSizeV,
                ),
                Container(
                  height: 30/6.4*boxSizeV,
                  width: 300/3.6*boxSizeH,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.white,
                    ),
                    borderRadius:
                    BorderRadius.all(Radius.circular(25.0), //
                    ),
                    color: Colors.white,
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10/3.6*boxSizeH,
                      ),
                      Text(
                        music[musicindex+1],
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                        ),

                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10/6.4*boxSizeV,
                ),
                Container(
                  height: 30/6.4*boxSizeV,
                  width: 300/3.6*boxSizeH,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.white,
                    ),
                    borderRadius:
                    BorderRadius.all(Radius.circular(25.0), //
                    ),
                    color: Colors.white,
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10/3.6*boxSizeH,
                      ),
                      Text(
                        music[musicindex],
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                    onTap: (){
                      setState(() {
                        if(musicindex>8)
                          musicindex=0;
                        else
                          musicindex+=1;
                      });
                    },
                    child: Icon(Icons.arrow_drop_down,color: Colors.black,))
              ],
            ),
          ),
        ),
        SizedBox(
          height: 15/6.4*boxSizeV,
        ),
        Container(
          height: 140/6.4*boxSizeV,
          width: 313/3.6*boxSizeH,
          decoration: BoxDecoration(
            border: Border.all(
              color: Color(0x906C63FF),
            ),
            borderRadius:
            BorderRadius.all(Radius.circular(25.0), //
            ),
            color: Color(0xff906C63FF),
          ),
          child: Padding(
            padding:  EdgeInsets.only(
              left: 15/3.6*boxSizeH,
              right: 15/3.6*boxSizeH,
              top: 10/6.4*boxSizeV,
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(FontAwesomeIcons.bookOpen,
                      color:Colors.black ,),
                    SizedBox(
                      width: 10/3.6*boxSizeH,
                    ),
                    Text(
                      'Books',
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 15/6.4*boxSizeV,
                ),
                Container(
                  height: 30/6.4*boxSizeV,
                  width: 300/3.6*boxSizeH,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.white,
                    ),
                    borderRadius:
                    BorderRadius.all(Radius.circular(25.0), //
                    ),
                    color: Colors.white,
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10/3.6*boxSizeH,
                      ),
                      Text(
                        books[bookindex+1],
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                        ),

                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10/6.4*boxSizeV,
                ),
                Container(
                  height: 30/6.4*boxSizeV,
                  width: 300/3.6*boxSizeH,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.white,
                    ),
                    borderRadius:
                    BorderRadius.all(Radius.circular(25.0), //
                    ),
                    color: Colors.white,
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10/3.6*boxSizeH,
                      ),
                      Text(
                        books[bookindex],
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                    onTap: (){
                      setState(() {
                        if(bookindex>8)
                          bookindex=0;
                        else
                          bookindex+=1;
                      });
                    },
                    child: Icon(Icons.arrow_drop_down,color: Colors.black,))
              ],
            ),
          ),
        ),
        SizedBox(
          height: 15/6.4*boxSizeV,
        ),
        Container(
          height: 140/6.4*boxSizeV,
          width: 313/3.6*boxSizeH,
          decoration: BoxDecoration(
            border: Border.all(
              color: Color(0xffDCE7FF),
            ),
            borderRadius:
            BorderRadius.all(Radius.circular(25.0), //
            ),
            color: Color(0xffDCE7FF),
          ),
          child: Padding(
            padding:  EdgeInsets.only(
              left: 15/3.6*boxSizeH,
              right: 15/3.6*boxSizeH,
              top: 10/6.4*boxSizeV,
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(FontAwesomeIcons.bookOpen,
                      color:Colors.black ,),
                    SizedBox(
                      width: 10/3.6*boxSizeH,
                    ),
                    Text(
                      'Games',
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 15/6.4*boxSizeV,
                ),
                Container(
                  height: 30/6.4*boxSizeV,
                  width: 300/3.6*boxSizeH,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.white,
                    ),
                    borderRadius:
                    BorderRadius.all(Radius.circular(25.0), //
                    ),
                    color: Colors.white,
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10/3.6*boxSizeH,
                      ),
                      Text(
                        games[gameindex+1],
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                        ),

                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10/6.4*boxSizeV,
                ),
                Container(
                  height: 30/6.4*boxSizeV,
                  width: 300/3.6*boxSizeH,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.white,
                    ),
                    borderRadius:
                    BorderRadius.all(Radius.circular(25.0), //
                    ),
                    color: Colors.white,
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10/3.6*boxSizeH,
                      ),
                      Text(
                       games[gameindex],
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                    onTap: (){
                      setState(() {
                        if(gameindex>12)
                          gameindex=0;
                        else
                          gameindex+=1;
                      });
                    },
                    child: Icon(Icons.arrow_drop_down,color: Colors.black,))
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
    )
    )
    );
  }
}