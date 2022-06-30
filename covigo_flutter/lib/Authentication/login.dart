import 'package:covigo/Authentication/Auth.dart';
import 'package:covigo/Authentication/signup.dart';
import 'package:covigo/ControlScreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:covigo/Variables.dart';

import 'package:covigo/WidgetResizing.dart';
import 'package:provider/provider.dart';
class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _emailController;
  TextEditingController _passwordController;
  FocusNode _emailnode;
  FocusNode _passwordnode;
  bool _submitted=false;
  bool _isLoading=false;
  String get _email =>_emailController.text;
  String get _password =>_passwordController.text;
  String _errorText=null;
  @override
  void initState() {
    _emailController = TextEditingController();
    _emailnode = FocusNode();
    _passwordController=TextEditingController();
    _passwordnode=FocusNode();

    super.initState();
  }
  @override
  void dispose(){
    _passwordController.dispose();
    _passwordnode.dispose();
    _emailnode.dispose();
    _emailController.dispose();
    super.dispose();
  }

  void _submit() async{
    setState(() {
      _submitted=true;
      _isLoading=true;
    });
    try {
      final auth=Provider.of<AuthBase>(context,listen: false);
      await auth.signInWithEmailAndPassword(_email, _password);
      Navigator.push(
        context, MaterialPageRoute(builder: (context)=> ControlScreen(),)
        ,);
    }catch(e){
      _errorText="Invalid id or password";
      print(e.toString());
    }finally{
      setState(() {
        _isLoading=false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    boxSizeH = SizeConfig.safeBlockHorizontal;
    boxSizeV = SizeConfig.safeBlockVertical;
    return Scaffold(
        body: Container(
        color: Colors.white,
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 40/6.4*boxSizeV,
            ),
            Text('LOGIN',
           style: GoogleFonts.poppins(fontSize: 50,
             color: Color(0xff001448),
             fontWeight: FontWeight.w500,
             shadows: [
               Shadow(
                 offset: Offset(0,3),
                 blurRadius: 3.0,
                 color: Colors.grey,
               ),
             ],
           ) ,),
            Container(
              width: 230/3.6*boxSizeH,
              height: 200/6.4*boxSizeV,
              child: Image.asset('images/Login.png'),
            ),
            SizedBox(
                height: 30/6.4*boxSizeV,
                child: _buildHeader()),
            SizedBox(
                height: 5/6.4*boxSizeV,
            ),
            Column(
              children: [
                Container(
                  width: 255/3.6*boxSizeH,
                  height: 38/6.4*boxSizeV,
                  child: TextField(
                    focusNode: _emailnode,
                    controller: _emailController,
                    keyboardType: TextInputType.text,
                    style: TextStyle(
                      color: Color(0xff2C4C75) ,
                      fontSize: 23.0,
                    ),
                    cursorColor: Color(0xff2C4C75) ,
                    decoration: InputDecoration(
                      errorText: _errorText,
                      hintText: 'Email',
                      hintStyle:GoogleFonts.poppins(
                        color: Color(0xff2C4C75) ,
                        fontSize: 23.0,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25.0)),
                        borderSide: BorderSide(
                          color: Colors.black54
                        ),

                      ),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xff2C4C75),
                          )),
                    ),
                    onEditingComplete: (){
                      FocusScope.of(context).requestFocus(_passwordnode);
                    },
                    onChanged: (value) {
                      setState(() {

                      });
                    },
                  ),
                ),
                SizedBox(
                  height: 15/6.4*boxSizeV,
                ),
                Container(
                  width: 255/3.6*boxSizeH,
                  height: 38/6.4*boxSizeV,
                  child: TextField(
                    focusNode: _passwordnode,
                    controller: _passwordController,
                    maxLines: 1,
                    keyboardType: TextInputType.text,
                    style: TextStyle(
                        color: Color(0xff2C4C75) ,
                        fontSize: 23.0,
                        textBaseline: TextBaseline.alphabetic
                    ),
                    cursorColor: Color(0xff2C4C75) ,
                    obscureText: true,
                    decoration: InputDecoration(
                      errorText: _errorText,
                      hintText: 'Password',
                      hintStyle:GoogleFonts.poppins(
                        color: Color(0xff2C4C75) ,
                        fontSize: 23.0,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25.0)),
                        borderSide: BorderSide(
                            color: Colors.black54
                        ),

                      ),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xff2C4C75),
                          )),
                    ),
                    onEditingComplete: _submit,
                    onChanged: (value) {
                      setState(() {

                      });
                    },
                  ),
                ),
                SizedBox(
                  height: 15/6.4*boxSizeV,
                ),
                GestureDetector(
                  child: Container(
                    width: 180/3.6*boxSizeH,
                    height: 38/6.4*boxSizeV,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.white,
                      ),
                      borderRadius:
                      BorderRadius.all(Radius.circular(25.0) //
                      ),
                      color: Color(0xff001448),),
                    child: Padding(
                      padding:  EdgeInsets.only(
                          top: 6/6.4*boxSizeV
                      ),
                      child: Text(
                        'Login',
                        style: GoogleFonts.poppins(
                          fontSize: 23.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  onTap: _submit,
                ),
                SizedBox(
                  height: 7/6.4*boxSizeV,
                ),
                GestureDetector(
                  child: Text(
                    'Forgotten password?',
                    style: GoogleFonts.poppins(
                      fontSize: 17,
                      color: Color(0xff2C4C75),
                      fontWeight: FontWeight.w400,
                    ) ,
                  ),
                ),
                SizedBox(
                  height: 30/6.4*boxSizeV,
                ),
                Text(
                  'Don\'t have an account?',
                  style: GoogleFonts.poppins(
                    fontSize: 23,
                    color: Color(0xff2C4C75),
                    fontWeight: FontWeight.w400,
                  ) ,
                ),
                SizedBox(
                  height: 10/6.4*boxSizeV,
                ),
                GestureDetector(
                  child: Container(
                    width: 180/3.6*boxSizeH,
                    height: 38/6.4*boxSizeV,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.white,
                      ),
                      borderRadius:
                      BorderRadius.all(Radius.circular(25.0) //
                      ),
                      color: Color(0xff001448),),
                    child: Padding(
                      padding:  EdgeInsets.only(
                          top: 6/6.4*boxSizeV
                      ),
                      child: Text(
                        'Sign Up',
                        style: GoogleFonts.poppins(
                          fontSize: 23.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  onTap: (){
                    Navigator.push(
                      context, MaterialPageRoute(builder: (context)=> SignupPage(),)
                      ,);
                  },
                ),
              ],
            ),

          ]
          ),
        )
    )
    );
  }
  Widget _buildHeader() {
    if (_isLoading) {
      return Center(
        child: CircularProgressIndicator(),
      );
    }
  }
}
