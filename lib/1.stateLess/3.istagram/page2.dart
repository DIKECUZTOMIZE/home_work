import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Page2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar:page2Appbar() ,
    body:Page2Body() ,
  );
}

PreferredSizeWidget page2Appbar()=>AppBar(
  centerTitle: true,

  title: Text('Page2'),
);

class Page2Body extends StatelessWidget{
  @override
  Widget build(BuildContext context) =>Container();

}