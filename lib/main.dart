import 'package:amber/code_screen.dart';
import 'package:amber/login_screen.dart';
import 'package:amber/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Home());
}

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CodeScreen(),
    );
  }
}


