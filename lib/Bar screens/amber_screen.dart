import 'package:flutter/material.dart';

class AmberScreen extends StatefulWidget {
  const AmberScreen({Key? key}) : super(key: key);

  @override
  _AmberScreenState createState() => _AmberScreenState();
}

class _AmberScreenState extends State<AmberScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/appbg.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.person,
                      color:Colors.white,
                    ),
                    onPressed: () {
                      //function to profile page
                    },
                    splashColor: Colors.white,
                  ),
                  Column(
                    children: [
                      FloatingActionButton(
                          backgroundColor: Colors.white,
                          child: Image.asset('assets/diamond.png'),
                          elevation: 0.1,
                          onPressed: () {
                            //function to coin page
                          }),
                      Text(
                        '99',
                        style: TextStyle(
                          fontSize: 10,
                          color:  Colors.black,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Spacer(),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: (){
                    //first container page
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 50),
                    child: Container(
                      height: 157.65,
                      width: 289.9,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Color(0xff88CAB0),
                      ),
                      child: Center(
                        child: Text(
                            'Live Stream', style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                        ),
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){
                    //second container page
                  },
                  child: Container(
                    height: 157.65,
                    width: 289.9,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Color(0xffEF5E49),
                    ),
                    child: Center(
                      child: Text(
                        'Video Call', style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                      ),
                      ),
                    ),
                  ),
                ),

              ],
            ),
            Spacer()
          ],
        ),
      ),
    );
  }
}
