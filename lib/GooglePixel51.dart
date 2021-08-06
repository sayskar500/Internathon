import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';

class GooglePixel51 extends StatelessWidget {
  // GooglePixel51({
  //   Key key,
  // }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff201c1c),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(size: 154.0, start: 14.0),
            Pin(size: 57.0, start: 32.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(29.0),
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 154.0, end: 14.0),
            Pin(size: 57.0, start: 32.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(29.0),
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Container(),
        ],
      ),
    );
  }
}
