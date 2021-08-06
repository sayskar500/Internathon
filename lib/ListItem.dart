import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  final String name;
  final String start;
  final String end;
  final int stops;

  ListItem({
    required this.name,
    required this.start,
    required this.end,
    required this.stops,
  });

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      width: width * 0.8,
      height: height * 0.005,
      color: Colors.amber,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Start :' + start),
              Text('End :' + end),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Stops :' + stops.toString()),
              Text('Name :' + name),
            ],
          ),
        ],
      ),
    );
  }
}
