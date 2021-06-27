import 'package:amber/custom%20widget/bottom.dart';
import 'package:amber/home_screen.dart';
import 'package:amber/auth%20screens/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  late String password, userName;
  var spinner = false;
  var _userController = TextEditingController();
  var _passwordController = TextEditingController();
  var _formKey = GlobalKey<FormState>();
  var userValidator = MultiValidator([
    RequiredValidator(errorText: 'User Name is required'),
  ]);
  var passwordValidator = MultiValidator([
    RequiredValidator(errorText: 'password is required'),
  ]);
  bool show = true;

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
            SizedBox(
              height: 200,
            ),
            Container(
              padding: EdgeInsets.only(left: 40, right: 40, top: 40),
              height: 340,
              width: 340,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: Colors.white.withOpacity(0.5),
              ),
              child: Column(
                children: [
                  Form(
                      key: _formKey,
                      child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Username :',
                          labelStyle:
                              TextStyle(color: Colors.red, fontSize: 20),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.red),
                          ),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.red)),
                        ),
                        controller:_userController ,
                        onChanged:(value){
                          userName = value;
                        } ,
                        textInputAction: TextInputAction.next,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Password :',
                          labelStyle:
                              TextStyle(color: Colors.red, fontSize: 20),
                          suffixIcon: IconButton(
                            icon: Icon(show ?Icons.visibility : Icons.visibility_off,),
                            onPressed: () {
                              setState(() {
                                show = !show;
                              });
                            }),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.red)),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.red),
                          ),
                        ),
                        controller:_passwordController ,
                        onChanged:(value){
                          password = value;
                        } ,
                        obscureText: show,
                        textInputAction: TextInputAction.done,
                      ),
                      SizedBox(
                        height: 50,
                      ),
                    ],
                  )),
                  ReusableBottom(
                    buttonName: 'LogIn',
                    color: Colors.tealAccent,
                    function: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomeScreen()));


                    },
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            ReusableBottom(
                buttonName: 'Create Account',
                color: Colors.deepOrangeAccent,
                function: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => RegisterScreen()));
                }),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/fbicon.png'),
                SizedBox(
                  width: 20,
                ),
                Image.asset('assets/snapicon.png'),
                SizedBox(
                  width: 20,
                ),
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
