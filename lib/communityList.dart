import 'package:flutter/material.dart';
import 'package:internathon/ListItem.dart';

class CommunityList extends StatefulWidget {
  // const CommunityList({ Key? key }) : super(key: key);

  @override
  _CommunityListState createState() => _CommunityListState();
}

class _CommunityListState extends State<CommunityList> {
  @override
  Widget build(BuildContext context) {
    return ListItem(start: "didi", end: "dada", name: "didi", stops: 1);
  }
}
