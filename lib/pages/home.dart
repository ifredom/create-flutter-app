import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hello/pages/activity/activity_page.dart';
import 'package:hello/pages/first/first_page.dart';
import 'package:hello/pages/mine/mine_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  List<Widget> _list = List();
  List<BottomNavigationBarItem> _bottomTabs = [];
  String _tabTitle = '';
  List tabData = [
    {'title': '首页', 'icon': Icon(Icons.home)},
    {'title': '活动', 'icon': Icon(Icons.nature)},
    {'title': '我的', 'icon': Icon(Icons.mail_outline)},
  ];

  @override
  void initState() {
    super.initState();
    print('widget.userInfo');

    _tabTitle = tabData[0]['title'];

    _list..add(FirstPage())..add(ActivityPage())..add(MinePage());
    for (var i = 0; i < tabData.length; i++) {
      _bottomTabs.add(BottomNavigationBarItem(
        title: Text(tabData[i]['title']),
        icon: tabData[i]['icon'],
      ));
    }
    print(_bottomTabs.length);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print('change');
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // return Text('test');
    return new Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            _tabTitle,
            style: TextStyle(
              fontSize: 18.0,
            ),
          ),
        ),
      ),
      body: IndexedStack(
        index: _currentIndex,
        children: _list,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: _bottomTabs,
        currentIndex: _currentIndex,
        onTap: _itemTapped,
        fixedColor: Theme.of(context).primaryColor,
      ),
    );
  }

  void _itemTapped(int index) {
    setState(() {
      _currentIndex = index;
      _tabTitle = tabData[index]['title'];
    });
  }
}

class GradientAppBar extends StatelessWidget {
  final String title;
  final double barHeight = 15.0;

  GradientAppBar(this.title);

  @override
  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery.of(context).padding.top;

    return Container(
      padding: const EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),
      height: statusBarHeight + barHeight,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Icon(
            Icons.people,
            color: Colors.black54,
          ),
          Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
              fontSize: 18.0,
            ),
          ),
          Icon(
            Icons.search,
            color: Colors.deepPurple,
          ),
        ],
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            const Color(0xFF3366FF),
            const Color(0xFF00CCFF),
          ],
          begin: const FractionalOffset(0.0, 1.0),
          end: const FractionalOffset(1.0, 0.0),
          stops: [0.0, 1.0],
          tileMode: TileMode.clamp,
        ),
      ),
    );
  }
}
