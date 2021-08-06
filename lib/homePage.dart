import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:internathon/communityList.dart';
import 'package:internathon/homeList.dart';

class HomePage extends StatefulWidget {
  // GooglePixel51({
  //   Key key,
  // }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool home = true;

  @override
  void initState() {
    home = true;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("HI"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: height * 0.02,
            ),
            Container(
              padding: EdgeInsets.all(10),
              height: height * 0.1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        home = true;
                      });
                    },
                    child: Container(
                      alignment: Alignment.center,
                      child: Icon(
                        Icons.home_outlined,
                        size: height * 0.05,
                        color: Colors.black,
                      ),
                      padding: EdgeInsets.all(10),
                      width: width * 0.4,
                      decoration: BoxDecoration(
                        color: Colors.purple[200],
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        home = false;
                      });
                    },
                    child: Container(
                      child: Icon(
                        Icons.person_pin_circle,
                        size: height * 0.05,
                        color: Colors.black,
                      ),
                      padding: EdgeInsets.all(10),
                      width: width * 0.4,
                      decoration: BoxDecoration(
                        color: Colors.purple[200],
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: height * 0.5,
              child: home ? HomeList() : CommunityList(),
            ),
          ],
        ),
      ),
    );
  }
}


// backgroundColor: const Color(0xff201c1c),
//       body: Stack(
//         children: <Widget>[
//           Pinned.fromPins(
//             Pin(size: 154.0, start: 14.0),
//             Pin(size: 57.0, start: 32.0),
//             child: Container(
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(29.0),
//                 color: const Color(0xffffffff),
//                 border: Border.all(width: 1.0, color: const Color(0xff707070)),
//               ),
//             ),
//           ),
//           Pinned.fromPins(
//             Pin(size: 154.0, end: 14.0),
//             Pin(size: 57.0, start: 32.0),
//             child: Container(
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(29.0),
//                 color: const Color(0xffffffff),
//                 border: Border.all(width: 1.0, color: const Color(0xff707070)),
//               ),
//             ),
//           ),
//           Container(),
//         ],
//       ),