import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  List<Map<String,dynamic>>myImage=[

    {'headline'    : 'Website for Rune.io',
    'product'    : 'Digital Product Desine',
    'icons'    : Icons.check_circle_outline,
    'task'    : '12 Tasks',
    },
    {'headline'    : 'Dashboard for ProSavvy',
    'product'    : 'Digital Product Desine',
    'icons'    : Icons.check_circle_outline,
    'task'    : '12 Tasks',
    },
    {'headline'    : 'Mobile Apps fpr Track.id',
    'product'    : 'Digital Product Desine',
    'icons'    : Icons.check_circle_outline,
    'task'    : '12 Tasks',
    },
    {'headline'    : 'Website for CourierGo.com',
    'product'    : 'Digital Product Desine',
    'icons'    : Icons.check_circle_outline,
    'task'    : '12 Tasks',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Row(
          children: [
            Container(
                height: 50,
                width: 50,
                decoration:BoxDecoration(
                  color: Colors.red,
                shape: BoxShape.circle,
            image: DecorationImage(
                image: AssetImage( 'assets/images/whatapp/bg_animal.jpeg'),fit:
            BoxFit.cover)
                
        )  ),

            SizedBox(
              width: 10,
            ),
            
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text('Hi, Bruce',style: TextStyle(
                      fontWeight: FontWeight.bold,fontSize: 25
                    ),),
                    Icon(Icons.waving_hand,color: Colors.yellow,)
                  ],
                ),
                
                Text('Your daily adventure starts now',style: TextStyle(
                  fontSize: 14,color: Colors.black.withOpacity(.5),
                  fontWeight: FontWeight.bold
                ),)
              ],
            ),

            SizedBox(
              width: 40,
            ),
            
            Container(
              height: 40,
              width: 40,
              decoration:  BoxDecoration(
                color: Colors.black.withOpacity(.1),
                borderRadius: BorderRadius.circular(10)
              ),child: Icon(Icons.qr_code_scanner),
            )
          ],
        ),
      ) ,
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: ListView(
            children: [

            StaggeredGrid.count(

                crossAxisCount:2,
                crossAxisSpacing: 11,
                mainAxisSpacing: 11,
                children: [

                Container(
                  height: 80,
                  width: double.infinity,
                  decoration:  BoxDecoration(
                    color: Color(0xff5694F2),
                    borderRadius: BorderRadius.circular(20),

                  ),
                  child:Padding(
                    padding: const EdgeInsets.all(15),
                    child: Row(
                      children: [
                        Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.black.withOpacity(.2)
                            ),
                            child: Icon(Icons.autorenew_rounded,color: Colors.white,)),
                        SizedBox(
                          width: 10,
                        ),

                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [

                            Text('On going',style: TextStyle(
                              fontSize: 18,fontWeight: FontWeight.bold,
                            ),),

                            Text('24 Task',style: TextStyle(
                              color: Colors.black.withOpacity(.5)
                            ),)
                          ],
                        )
                      ],
                    ),
                  ) ,

                ),
                Container(
                  height: 80,
                  width: double.infinity,
                  decoration:  BoxDecoration(
                    color: Color(0xffFEC347),
                    borderRadius: BorderRadius.circular(20),

                  ),
                  child:Padding(
                    padding: const EdgeInsets.all(15),
                    child: Row(
                      children: [
                        Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.black.withOpacity(.2)
                            ),
                            child: Icon(Icons.access_time,color: Colors.white,)),
                        SizedBox(
                          width: 10,
                        ),

                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [

                            Text('In process',style: TextStyle(
                              fontSize: 18,fontWeight: FontWeight.bold,
                            ),),

                            Text('12 Task',style: TextStyle(
                              color: Colors.black.withOpacity(.5)
                            ),)
                          ],
                        )
                      ],
                    ),
                  ) ,

                ),
                Container(
                  height: 80,
                  width: double.infinity,
                  decoration:  BoxDecoration(
                    color: Color(0xff53C2C5),
                    borderRadius: BorderRadius.circular(20),

                  ),
                  child:Padding(
                    padding: const EdgeInsets.all(13),
                    child: Row(
                      children: [
                        Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.black.withOpacity(.2)
                            ),
                            child: Icon(Icons.contact_page,color: Colors.white,)),
                        SizedBox(
                          width: 10,
                        ),

                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [

                            Text('Completed',style: TextStyle(
                              fontSize: 18,fontWeight: FontWeight.bold,
                            ),),

                            Text('42 Task',style: TextStyle(
                              color: Colors.black.withOpacity(.5)
                            ),)
                          ],
                        )
                      ],
                    ),
                  ) ,

                ),
                Container(
                  height: 80,
                  width: double.infinity,
                  decoration:  BoxDecoration(
                    color: Color(0xffF26E56),
                    borderRadius: BorderRadius.circular(20),

                  ),
                  child:Padding(
                    padding: const EdgeInsets.all(15),
                    child: Row(
                      children: [
                        Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.black.withOpacity(.2)
                            ),
                            child: Icon(Icons.cancel_outlined,color: Colors.white,)),
                        SizedBox(
                          width: 10,
                        ),

                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [

                            Text('Canceled',style: TextStyle(
                              fontSize: 18,fontWeight: FontWeight.bold,
                            ),),

                            Text('8 Task',style: TextStyle(
                              color: Colors.black.withOpacity(.5)
                            ),)
                          ],
                        )
                      ],
                    ),
                  ) ,

                ),

                ],
              ),

           SizedBox(
             height: 30,
           ),

         Text("Recent Task"),

              SizedBox(
                height: 30,
              ),

           SizedBox(
             height:  600,
             child: ListView.builder(
               itemCount: myImage.length,
                 itemBuilder:(context, index) => Column(
                   children: [
             
                     Container(
                       height: 90,
                       width: double.infinity,
                       decoration: myDecoration(),
                       child: Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Row(
                                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: [

                                 Text(myImage[index]['headline'],style: TextStyle(
                                   fontSize: 16,fontWeight: FontWeight.bold
                                 ),),
                                 Text(myImage[index]['product'],style: TextStyle(
                                   color: Colors.black.withOpacity(.5)
                                 ),),
                                 Row(
                                   children: [

                                     Icon(myImage[index]['icons'],size: 14,),
                                     Text(myImage[index]['task'],style: TextStyle(
                                       fontSize: 12,fontWeight: FontWeight.bold
                                     ),),
                                   ],
                                 )
                               ],
                             ),

                             Stack(
                               children: [
                                 Center(
                                   child: Container(
                                     height: 50,
                                     width: 50,

                                     decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                       color: Colors.red,
                                     ),


                                   ),
                                 ),

                                 Center(
                                   child: Container(
                                     margin: EdgeInsets.only(left: 5),
                                     height: 40,
                                     width: 40,

                                     decoration: BoxDecoration(

                                      shape: BoxShape.circle,
                                       color: Colors.white,
                                     ),
                                     child: Center(child: Text('40%')),


                                   ),
                                 ),
                               ],
                             )
                           ],
                         ),
                       ),
                     ),
                     SizedBox(
                       height: 30,
                     )
                   ],
                 ),  ),
           )



            ],
          ),
        ));
  }
}

  BoxDecoration myDecoration(){
  return BoxDecoration(
        color: Colors.white,
         border: Border.all(color: Colors.black),
        boxShadow: [BoxShadow(
        offset: Offset(0, 7)
        )],
        borderRadius: BorderRadius.circular(10)
  );
 }

