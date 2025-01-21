
import 'package:flutter/material.dart';
import 'package:home_work/1.stateLess/1.Strobery_Ui/appBar.dart';
import 'package:home_work/1.stateLess//1.Strobery_Ui/body.dart';


class StroberryAppHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
     return Scaffold(
       appBar:StroberryAppBar(),
       body: StroberryBody(),
     );
  }
}