import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Bar screens/amber_screen.dart';
import 'Bar screens/chat_screen.dart';
import 'Bar screens/history_screen.dart';
import 'Bar screens/live_stream_screen.dart';
import 'Bar screens/video_call_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 2;
  var _pages=[VideoCallScreen(), HistoryScreen(), AmberScreen(), LiveStreamsScreen(), ChatScreen()];

  setBottomBarIndex(index) {
    setState(() {
      currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: PageView(
        controller:  PageController(initialPage: 2,),
          scrollDirection: Axis.horizontal,
          children: _pages,
          onPageChanged: (index){
          setState(() {
            currentIndex=index;
          });
          },
         ),

      bottomNavigationBar: Stack(
        children: [
          Positioned(
            child: Container(
              width: size.width,
              height: 80,
              child: Stack(
                children: [
                  CustomPaint(
                    size: Size(size.width, 80),
                    painter: BNBCustomPainter(),
                  ),
                  Center(
                    heightFactor: 0.6,
                    child: FloatingActionButton(
                        backgroundColor: Colors.white,
                        child: Image.asset('assets/amberIcon.png'),
                        elevation: 0.1,
                        onPressed: () {
                          setBottomBarIndex(2);
                        }),
                  ),
                  Container(
                    width: size.width,
                    height: 80,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            IconButton(
                              icon: Icon(
                                Icons.video_call,
                                color: currentIndex == 0
                                    ? Colors.black
                                    : Colors.white,
                              ),
                              onPressed: () {
                                setBottomBarIndex(0);
                              },
                              splashColor: Colors.white,
                            ),
                            Text(
                              'video call',
                              style: TextStyle(
                                fontSize: 10,
                                color: currentIndex == 0
                                    ? Colors.black
                                    : Colors.white,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            IconButton(
                                icon: Icon(
                                  Icons.history,
                                  color: currentIndex == 1
                                      ? Colors.black
                                      : Colors.white,
                                ),
                                onPressed: () {
                                  setBottomBarIndex(1);
                                }),
                            Text(
                              'History',
                              style: TextStyle(
                                fontSize: 10,
                                color: currentIndex == 1
                                    ? Colors.black
                                    : Colors.white,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          width: size.width * 0.10,
                        ),
                        Column(
                          children: [
                            IconButton(
                                icon: Icon(
                                  Icons.live_tv_sharp,
                                  color: currentIndex == 3
                                      ? Colors.black
                                      : Colors.white,
                                ),
                                onPressed: () {
                                  setBottomBarIndex(3);
                                }),
                            Text(
                              'Live Stream',
                              style: TextStyle(
                                fontSize: 10,
                                color: currentIndex == 3
                                    ? Colors.black
                                    : Colors.white,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            IconButton(
                                icon: Icon(
                                  Icons.chat,
                                  color: currentIndex == 4
                                      ? Colors.black
                                      : Colors.white,
                                ),
                                onPressed: () {
                                  setBottomBarIndex(4);
                                }),
                            Text(
                              'Chat',
                              style: TextStyle(
                                fontSize: 10,
                                color: currentIndex == 4
                                    ? Colors.black
                                    : Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class BNBCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = new Paint()
      ..color = Colors.orangeAccent
      ..style = PaintingStyle.fill;

    Path path = Path();
    path.moveTo(0, 20); // Start
    path.quadraticBezierTo(size.width * 0.20, 0, size.width * 0.35, 0);
    path.quadraticBezierTo(size.width * 0.40, 0, size.width * 0.40, 20);
    path.arcToPoint(Offset(size.width * 0.60, 20),
        radius: Radius.circular(20.0), clockwise: false);
    path.quadraticBezierTo(size.width * 0.60, 0, size.width * 0.65, 0);
    path.quadraticBezierTo(size.width * 0.80, 0, size.width, 20);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.lineTo(0, 20);
    canvas.drawShadow(path, Colors.black, 5, true);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
