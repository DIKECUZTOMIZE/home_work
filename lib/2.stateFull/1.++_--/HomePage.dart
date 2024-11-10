
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:home_work/2.stateFull/1.++_--///appBar.dart';
import 'package:home_work/2.stateFull/1.++_--///body.dart';



class AddAndSubApp1HomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() =>_HomePageState();
}

class _HomePageState extends State<AddAndSubApp1HomePage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AddAndSubAppBar()  ,
      body: AddAndSubApp1Body(),
    );
  }
}