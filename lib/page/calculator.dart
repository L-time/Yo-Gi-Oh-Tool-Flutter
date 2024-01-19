import 'package:flutter/material.dart';

class calculatePage extends StatefulWidget{
  const calculatePage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _calculatePage();
  }
}

class _calculatePage extends State<calculatePage>{

  int player1LP  =  8000 , player2LP = 8000,changes = 0; //玩家1LP，玩家2LP，改变量



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("施工中……"),
      ),
    );
  }
}