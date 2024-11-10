import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:home_work/2.stateFull/sharepreferenc/share_login/homePage.dart';

import 'package:shared_preferences/shared_preferences.dart';


class LoginPage extends StatelessWidget{

  //variable sam name use kuribor babe
 static const String LOGING= 'login';

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      backgroundColor: Colors.orange,
      body: Center(
        child: ElevatedButton(onPressed: ()async{

          SharedPreferences prefs=await SharedPreferences.getInstance();
          prefs.setBool(LOGING, true);

          Navigator.pushReplacement(context, MaterialPageRoute(builder:  (context) => HomePage1(),));

        }, child: Text( 'login')),
      ),
    );
  }
}