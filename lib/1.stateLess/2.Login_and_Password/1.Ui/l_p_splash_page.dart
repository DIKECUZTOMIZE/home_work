import 'dart:async';

import 'package:flutter/material.dart';
import 'package:home_work/1.stateLess/2.Login_and_Password/1.Ui/Body.dart';

class LPSplashPage extends StatefulWidget {
  @override
  State<LPSplashPage> createState() => _LPSplashPageState();
}

class _LPSplashPageState extends State<LPSplashPage> {

 @override
  void initState() {
    super.initState();
    
    Timer(Duration(seconds:  3),() {
     Navigator.push(context, MaterialPageRoute(builder: (context) =>LoginAndPasswordBody() ,));
     },);

    setState(() {});
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(child: FlutterLogo(size: 200,)),
    );
  }
}
