import 'package:flutter/material.dart';

class RankListContainer extends StatefulWidget {
  @override
  _RankListContainerState createState() => _RankListContainerState();
}

class _RankListContainerState extends State<RankListContainer> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: <Widget>[
        ListTile(
          title: Text("商品列表"),
        ),
        Flex(
          direction: Axis.horizontal,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Expanded(
              child: Text(
                '豆瓣榜单',
                style: TextStyle(
                  fontSize: 21,
                  color: Color.fromRGBO(0, 0, 0, .9),
                ),
              ),
            ),
            Expanded(
              child: Text(
                '用app看更多10',
                style: TextStyle(
                  fontSize: 12,
                  color: Color.fromRGBO(0, 0, 0, .9),
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
