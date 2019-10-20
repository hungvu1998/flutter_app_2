import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/src/resources/home_page.dart';
import 'package:flutter_app/src/resources/home_page2.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> with TickerProviderStateMixin {
  int _currentTabIndex = 0;
  List<Widget>_childerns;
  final bottomBarModel =  <BottomNavigationBarItem>[
    BottomNavigationBarItem(
      icon: Icon(Icons.favorite)
    ),
    BottomNavigationBarItem(
        icon: Icon(Icons.home)
    ),
    BottomNavigationBarItem(
        icon: Icon(Icons.person)
    ),
  ];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body: _childerns[_currentTabIndex],
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(bottom: 12),
        child: Stack(
          children: <Widget>[
            BottomNavigationBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              selectedIconTheme: IconThemeData(
                color: Colors.black,
                size: 26,
              ),
              currentIndex: _currentTabIndex,
              items: bottomBarModel,
            )
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    SystemChrome.setEnabledSystemUIOverlays([]);
    _childerns = [
      HomePage()
    ];
    super.initState();
  }
}
