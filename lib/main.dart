import 'package:flutter/material.dart';
import 'package:ygo_tools/config/config.dart';
import 'package:ygo_tools/page/calculator.dart';
import 'package:ygo_tools/page/search_page.dart';


void main()=>runApp(MainApp());



class MainApp extends StatefulWidget{
  const MainApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MainApp();
  }
}

class _MainApp extends State<MainApp>{
  int currentIndex = 0;
  final page_list = <Widget>[
    searchPage(),
    calculatePage()
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:debugMode,
      home: SafeArea(
        child: Scaffold(
        body: page_list[currentIndex],
        bottomNavigationBar: NavigationBar(
        selectedIndex: currentIndex,
        onDestinationSelected: (int index) {
      setState(() {
        currentIndex = index;
      });
    },
    destinations: const <Widget>[
    NavigationDestination(
    icon: Icon(Icons.search),
    label: '查询',
    ),
    NavigationDestination(
    icon: Icon(Icons.calculate),
    label: '计算',
    ),
    ],
        ),
      ),
    )
    );
  }

}