import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:home_work/2.stateFull/sharepreferenc/logoutPage/homePage.dart';
import 'package:home_work/2.stateFull/sharepreferenc/logoutPage/logoutPage.dart';


import 'package:shared_preferences/shared_preferences.dart';

void main (){
  runApp(App());
}

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Splashpage(),
    );
  }
}

class Splashpage extends StatefulWidget{

  @override
  State<Splashpage> createState() => _SplashPageState();
}

class _SplashPageState extends State<Splashpage> {


  @override
  void initState()  {
    super.initState();
    //object
    getValueFromPrefs();
  }

  //Function creat karon async bonabor babe
  void getValueFromPrefs() {

    Timer( Duration(seconds: 2),()async{
      SharedPreferences prefs=await SharedPreferences.getInstance();

      //If null check kora ase value null na ki:
      bool check=prefs.getBool(LogOutPage.LOGOUTKEY) ?? false;

//Creat Navigator Widget:Code short kuribor babe:
      Widget NavigatorTo=LogOutPage(); //flase


      //true:
      if(check){
        NavigatorTo=HomePage();
      }

      //function creat NavigatorTO  Jote tote use kuribor babe easy proscess
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => NavigatorTo,));



      // if(check){
      //   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage(),));
      // }else{
      //   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LogOutPage(),));
      // }


    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: Container(

          child: Text('LogOut',style: TextStyle(
            fontSize: 100,
            fontWeight: FontWeight.w900,
          ),),
        ),
      ) ,
    );
  }
}