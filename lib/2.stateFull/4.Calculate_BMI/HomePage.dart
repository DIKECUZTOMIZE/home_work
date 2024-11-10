import 'dart:math';

import 'package:flutter/material.dart';


class AppBMI1HomePage  extends StatefulWidget {

  @override
  State<  StatefulWidget> createState() => _BmiBodyState();
}


class _BmiBodyState extends State<AppBMI1HomePage> {

  TextEditingController wtController=TextEditingController();
  TextEditingController htInController=TextEditingController();
  TextEditingController htFtController=TextEditingController();

  String bmi='';
  Color colorBg=Colors.white;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: colorBg,
       body: ListView(
         children: [
           Column(
             children: [
               SizedBox(
                 height: 70,
               ),


               //Heart:
               Stack(
                 children: [
                   Container(
                     height: 250,
                     width: 250,

                     decoration: BoxDecoration(
                         image: DecorationImage(image:
                         AssetImage('assets/images/bg_hearttt.png'))
                     ),

                     child: Center(
                       child: Text(bmi,style: TextStyle(
                           color: Colors.red,fontSize: 40,fontWeight:FontWeight.bold
                       ),),
                     ),
                   ),

                 ],
               ),

               SizedBox(
                 height: 20,
               ),

               //Healthy:
               Container(
                 child: Text(
                   'Healthy',
                   style: TextStyle(color: Color(0xff53bcb2), fontSize: 40),
                 ),
               ),

               //space:
               SizedBox(
                 height: 30,
               ),


               //Gender:
               Container(
                 width: 250,
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceAround,
                   children: [
                     Column(
                       children: [
                         Text(
                           "Male",
                           style: TextStyle(
                               color: Colors.black.withOpacity(.5),
                               fontWeight: FontWeight.bold),
                         ),
                         Icon(
                           Icons.male_sharp,
                           size: 70,
                           color: Colors.black.withOpacity(.5),
                         )
                       ],
                     ),
                     Column(
                       children: [
                         Text(
                           "Female",
                           style: TextStyle(
                               color: Colors.black.withOpacity(.5),
                               fontWeight: FontWeight.bold),
                         ),
                         Icon(Icons.female,
                             size: 70, color: Colors.black.withOpacity(.5))
                       ],
                     )
                   ],
                 ),
               ),

               //Point:
               SizedBox(
                 height: 35,
               ),

               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [

                   Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Text(
                         'wight',
                         style: TextStyle(color: Colors.black.withOpacity(.5)),
                       ),

                       SizedBox(
                         width: 100,
                         child: TextField(
                           controller: wtController,
                          textAlign: TextAlign.center,
                           decoration:InputDecoration(

                             focusedBorder: OutlineInputBorder(borderSide: BorderSide(width: 0,color: Colors.transparent)),
                             enabledBorder: OutlineInputBorder(borderSide: BorderSide(width: 0,color: Colors.transparent)),


                           ),
                         ),
                       )
                     ],
                   ),

                   Container(
                     height: 50,
                     width: 2,
                     color: Colors.black.withOpacity(.3),
                   ),

                   Column(
                       children: [
                         Text(
                           'feet',
                           style: TextStyle(color: Colors.black.withOpacity(.5)),
                         ),

                         SizedBox(
                           width: 100,
                           child: TextField(
                             textAlign: TextAlign.center,
                               controller: htFtController,
                               decoration: InputDecoration(
                                   enabledBorder: OutlineInputBorder(borderSide:

                                   BorderSide(width: 0,color: Colors.transparent)),

                                   focusedBorder: OutlineInputBorder(
                                       borderSide: BorderSide(width: 0,color: Colors.transparent)
                                   )


                               )
                           ),
                         ),
                       ]  ),

                   Container(
                     height: 50,
                     width: 2,
                     color: Colors.black.withOpacity(.3),
                   ),

                   Column(
                     children: [
                       Text(
                         'height',
                         style: TextStyle(color: Colors.black.withOpacity(.5)),
                       ),

                       SizedBox(
                         width: 100,
                         child: TextField(
                           textAlign: TextAlign.center,
                           controller: htInController,
                           decoration:InputDecoration(
                             enabledBorder: OutlineInputBorder(
                                 borderSide: BorderSide( width: 0,color: Colors.transparent)),
                             focusedBorder: OutlineInputBorder(
                                 borderSide: BorderSide( width: 0,color: Colors.transparent)),
                           ),
                         ),
                       ),

                     ],
                   ),
                 ],
               ),


               //CalculatorBMI:
             ],
           ),

            Expanded(
              child: SizedBox(
                height: 50,
              ),
            ),

           //2.Calculate:
           Container(
             height: 70,
             width: double.infinity,
             child: ElevatedButton(onPressed: () {

               num wt=double.parse(wtController.text.toString());
               num  htInch=int.parse(htInController.text.toString());
               num htfeet=int.parse(htFtController.text.toString());

               num totalInch=(htfeet*12)+(htInch);
               num totalCm=totalInch*2.54;
               num  totalM=totalCm/100;

               num bmiValue=pow(totalM, 2.0);

               bmi='  ${bmiValue.toStringAsFixed( 2)}';

               if(bmiValue>25){
                 colorBg=Colors.red.shade200;
               }
               else if(bmiValue<18){
                 colorBg=Colors.orange;
               }
               else  {
                 colorBg=Colors.lightGreen;
               }

               setState(() {});
             },
                 child: Text("Calculate BMI",style: TextStyle(
                     color: Colors.white.withOpacity(.9),fontSize: 25,fontWeight: FontWeight.w400),),

                 style: ElevatedButton.styleFrom(
                     minimumSize: Size(double.infinity, 80),
                     backgroundColor: Color(0xff53bcb2),
                     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4))
                 )
             ),
           ),
         ],
       ),
    );
  }
}
