import 'package:flutter/material.dart';
import 'package:hello/utils/common/colorUtils.dart';

class GridViewContainer extends StatefulWidget {
  @override
  _GridViewContainerState createState() => _GridViewContainerState();
}

class _GridViewContainerState extends State<GridViewContainer> {
  List gridData = [
    {
      'title': '找电影',
      'subTitle': '影院热映',
      'titleColor': '#2384E8',
    },
    {
      'title': '热播剧',
      'subTitle': '剧集综艺',
      'titleColor': '#7A6ADB',
    },
    {
      'title': '畅销书',
      'subTitle': '畅销排行',
      'titleColor': '#9F7860',
    },
    {
      'title': '找小组',
      'subTitle': '志趣相投',
      'titleColor': '#2AB8CC',
    },
    {
      'title': '找音乐',
      'subTitle': '新碟榜',
      'titleColor': '#F48F2E',
    },
    {
      'title': '豆品',
      'subTitle': '生活美学',
      'titleColor': '#42BD56',
    },
  ];

  List<Widget> _gridWidget = [];

  @override
  void initState() {
    super.initState();
    for (var i = 0; i < gridData.length; i++) {
      _gridWidget.add(GridViewItem(
        title: gridData[i]['title'],
        subTitle: gridData[i]['subTitle'],
        titleColor: gridData[i]['titleColor'],
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 137,
      color: Colors.pink,
      // child: Text("hehe"),
      child: GridView.count(
        primary: false,
        crossAxisCount: 3,
        childAspectRatio: 1.61,
        // padding: EdgeInsets.fromLTRB(0, 18, 0, 16),
        children: _gridWidget,
      ),
    );
  }
}

class GridViewItem extends StatelessWidget {
  final subTitle;
  final title;
  final titleColor;
  GridViewItem({this.title, this.subTitle, this.titleColor});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        // Color.fromRGBO(236, 236, 236, 0.5)
        border: Border(
          top:
              BorderSide(width: 1.0, color: Color.fromRGBO(236, 236, 236, 0.5)),
          left:
              BorderSide(width: 1.0, color: Color.fromRGBO(236, 236, 236, 0.5)),
          right:
              BorderSide(width: 1.0, color: Color.fromRGBO(236, 236, 236, 0.5)),
          bottom:
              BorderSide(width: 1.0, color: Color.fromRGBO(236, 236, 236, 0.5)),
        ),
      ),
      child: Container(
        // padding: EdgeInsets.fromLTRB(0, 18, 0, 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              title,
              style: TextStyle(
                fontSize: 19.0,
                // color: Colors.red,
                color: ColorUtils.hexToColor(titleColor),
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              subTitle,
              style: TextStyle(
                fontSize: 13.0,
                color: ColorUtils.hexToColor('#818181'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
