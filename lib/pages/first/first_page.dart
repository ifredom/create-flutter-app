import 'package:flutter/material.dart';
import 'package:hello/pages/first/grid_view_container.dart';
import 'package:hello/pages/first/rank_list_container.dart';

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15),
      child: Column(
        children: <Widget>[
          GridViewContainer(),
          RankListContainer(),
        ],
      ),
    );
  }
}
