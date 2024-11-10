
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class  AddAndSubApp1Body extends StatefulWidget{
  @override
  State<StatefulWidget> createState() =>_Body();
}

class _Body extends State<AddAndSubApp1Body>{

   int countAdd =0;

   void add(){
   // countAdd++;
   // setState((){});
  }
   void sub(){
    countAdd--;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
     return Center(
         child: Column(
       mainAxisAlignment: MainAxisAlignment.center,
       children: [

         Text("$countAdd",style: TextStyle(
           fontSize: 50
         ),),

         Row(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [

             //1.increamemt
             FloatingActionButton(
               onPressed:(){
               countAdd++;
               setState(() {});
             }, child: Icon(Icons.add),),

             //space:
             SizedBox(
               width: 20,
             ),

             //Dcreament
             FloatingActionButton(onPressed: sub,
               child: Text("-",style: TextStyle(
                 fontSize: 40
               ),),)
           ],
         )
       ],
     )
     );
  }
}