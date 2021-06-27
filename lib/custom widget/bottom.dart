import 'package:flutter/material.dart';
class ReusableBottom extends StatelessWidget {
  ReusableBottom({required this.color,required this.buttonName,required this.function});
  final Color color;
  final String buttonName;
  final VoidCallback function;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height*0.06 ,
      width: size.width*0.7,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: color,
      ),
      child: TextButton(
        onPressed: function,
        child: Text(
          buttonName,
          style: TextStyle(fontSize: 22, color: Colors.white, height: 1.5).copyWith(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
