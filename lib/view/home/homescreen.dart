import 'package:flutter/material.dart';
import 'package:marketfeed_clone/view/home/bottom_navigationbar/bottomnavigationbar.dart';
import 'package:marketfeed_clone/view/home/drawer/drawer.dart';
import 'package:marketfeed_clone/view/home/screens/market_screen/marketscreen.dart';
import 'package:marketfeed_clone/view/home/screens/read_screen/readscreen.dart';
import 'package:marketfeed_clone/view/home/screens/signal_screen/signalscreen.dart';
import 'package:marketfeed_clone/view/home/screens/strategies_screen/strategiesscreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  static List<Widget> _bottomnavi = <Widget>[
    StrategiesScreen(),
    ReadScreen(),
    SignalScreen(),
    MarketScreen(),
  ];

  int _selctedindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerPage(),
      bottomNavigationBar: MyBottom(
          onTap: (index) {
            setState(() {
              _selctedindex = index;
            });
          },
          selectedIndex: _selctedindex),
      body: _bottomnavi[_selctedindex],
    );
  }
}
