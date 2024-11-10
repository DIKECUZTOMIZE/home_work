import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(App() );
}

class App  extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Stack(
    
        children: [

          Center(
            child: Container(
              height: 200,
              width: 200,

              
              decoration: BoxDecoration(

                image: DecorationImage(image:  AssetImage('assets/images/bg_heart.png'))
              ),

           ),




          ), 
          Center(
            child: Container(
              height: 200,
              width: 200,
              
              child: Center(child: Text('dsghg')),





            ),
          ),
          ]

      ),
    );
  }
}
