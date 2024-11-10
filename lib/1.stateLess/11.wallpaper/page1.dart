
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';



class page1 extends StatelessWidget{

 List<Map<String,dynamic>>imageList=[

   {
     'imgList'    : 'assets/images/whatapp/bg_naturea.jpg',
     'imgList2'    : 'assets/images/whatapp/bg_classic.jpg'
   },

 ];
  @override
  Widget build(BuildContext context) {

     return  SafeArea(
       child: Scaffold(
         body:ListView(
             children: [

               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: StaggeredGrid.count(crossAxisCount:  2,
                   crossAxisSpacing: 11,
                   mainAxisSpacing: 11,
                   children: [
                     Container(
                       height: 300,
                       width: 100,
                       decoration: BoxDecoration(
                         color: Colors.green,
                         borderRadius: BorderRadius.circular(10),
                       ),


                     ),

                     Padding(
                       padding: const EdgeInsets.symmetric(vertical: 20),
                       child: Container(
                         height: 300,
                         width: 100,
                         decoration: BoxDecoration(
                           color: Colors.green,
                           borderRadius: BorderRadius.circular(10),
                         ),


                       ),
                     ),

                     Container(
                       height: 300,
                       width: 100,
                       decoration: BoxDecoration(
                         color: Colors.green,
                         borderRadius: BorderRadius.circular(10),
                       ),


                     ),



                   ],
                 ),
               ),

         ]
         ))
     );
  }
}
