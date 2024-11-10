import 'package:flutter/material.dart';
import 'package:home_work/1.stateLess/3.istagram/Page1.dart';

void main(){

  runApp(InstagramApp());
}

class InstagramApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) =>MaterialApp(
    home:InstagramAppPage1() ,
  );
}


