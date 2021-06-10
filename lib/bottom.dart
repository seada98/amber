import 'package:flutter/material.dart';
class ReusableBottom extends StatelessWidget {
  ReusableBottom({required this.color});
  final Color color;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height*0.08 ,
      width: size.width*0.08,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: color,
      ),
      child: TextButton(
        onPressed: (){},
        child: null,

      ),
    );
  }
}
