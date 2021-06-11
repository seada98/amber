import 'package:amber/bottom.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/login.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: 200,),
            Container(
              padding: EdgeInsets.only(left: 40,right: 40,top: 40),
              height: 340,
              width: 340,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: Colors.white.withOpacity(0.5),
              ),
              child: Column(
                children: [
                  Form(child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                            labelText: 'Username :',
                          labelStyle: TextStyle(
                            color: Colors.red,
                            fontSize: 20
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.red),
                          ),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.red
                              )
                          ),


                        ),

                      ),
                      SizedBox(height: 30,),
                      TextFormField(
                        decoration: InputDecoration(
                            labelText: 'Password :',
                            labelStyle: TextStyle(
                                color: Colors.red,
                                fontSize: 20
                            ),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.red
                              )
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.red),
                          ),
                        ),

                      ),
                      SizedBox(height: 50,),
                    ],
                  )),


                  ReusableBottom(buttonName: 'LogIn',color: Colors.tealAccent,),
                ],
              ),
            ),
            SizedBox(height: 50,),
            ReusableBottom(buttonName: 'Create Account',color: Colors.deepOrangeAccent,),
            SizedBox(height: 50,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/fbicon.png'),
                SizedBox(width: 20,),
                Image.asset('assets/snapicon.png'),
                SizedBox(width: 20,),
                Image.asset('assets/gmailicon.png')
              ],
            ),
            Spacer()

          ],
        ),
      ),
    );
  }
}

