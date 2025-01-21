import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:home_work/1.stateLess/1.Strobery_Ui/homePage.dart';

void main(){
  runApp(StroberryApp());
}
class StroberryApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return MaterialApp(
    home:StroberryAppHomePage(),
  );
  }
}