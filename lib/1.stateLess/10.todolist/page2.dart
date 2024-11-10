import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  List<Map<String, dynamic>> myData = [
    {'date': '14', 'week': 'Mon'},
    {'date': '15', 'week': 'Tue'},
    {'date': '16', 'week': 'wed'},
    {'date': '17', 'week': 'Tue'},
    {'date': '18', 'week': 'Fri'},
    {'date': '19', 'week': 'Sat'},
    {'date': '20', 'week': 'Sun'},
    {'date': '14', 'week': 'Mon'},
    {'date': '15', 'week': 'Tue'},
    {'date': '16', 'week': 'wed'},
    {'date': '17', 'week': 'Tue'},
    {'date': '18', 'week': 'Fri'},
    {'date': '19', 'week': 'Sat'},
    {'date': '20', 'week': 'Sun'},
  ];

  List<Map<String, dynamic>> myTime = [
    {'time': '09 am'},
    {'time': '10 am'},
    {'time': '11 am'},
    {'time': '12 am'},
    {'time': '01 pm'},
    {'time': '02 pm'},
    {'time': '03 pm'},
    {'time': '04 pm'},
    {'time': '05 pm'},
    {'time': '06 pm'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Expanded(
                flex: 15,
                child: Text('back buttone')),



              Expanded(
                flex: 2,
                child: Container(

                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(.1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(Icons.more_vert)),
              ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(children: [
          
          //1.full date:
          Text(
            'Wednesday,17 January 20124',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          
          //space:
          SizedBox(
            height: 20,
          ),
          
          //2.week and date:
          SizedBox(
            height: 50,
            width: 50,
            child: GridView.count(
              scrollDirection: Axis.horizontal,
                crossAxisCount: 1,
                childAspectRatio: 5/5,
                mainAxisSpacing: 11,
                crossAxisSpacing: 11,
                children: myData.map((element){
                  return Container(
                  //  color: Colors.green,
                    child: Stack(
                      children: [
                        Container(
                          color: Colors.red,
                          child: Text(element['week']),
                        ),



                      ],

                    ),
                  );
                }).toList()
            )
          ),
          
          //3.
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              
              //TimeList:
              Expanded(
                flex: 1,
                child: SizedBox(
                  height: 500,
                  width: 100,
                  child: ListView.builder(
                    itemCount: myTime.length,
                    itemBuilder: (context, index) => Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            myTime[index]['time'],
                            style:
                                TextStyle(color: Colors.black.withOpacity(.5)),
                          ),
                          SizedBox(
                            height: 30,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              
              //Box 
              Expanded(
                flex: 4,
                child: StaggeredGrid.count(
                  crossAxisCount: 1,
                  crossAxisSpacing: 11,
                  mainAxisSpacing: 11,
                  children: [
                    
                    //1.server respons:
                    Container(
                      height: 100,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.black),
                          boxShadow: [BoxShadow(offset: Offset(0, 5))]),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 210,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  //server:
                                  Text(
                                    'Optimize server respons time',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  
                                  //space:
                                  SizedBox(
                                    height: 10,
                                  ),
                                  
                                  //time:
                                  Text(
                                    '09.00 am - 10-15 am',
                                    style: TextStyle(
                                        color: Colors.black.withOpacity(.5),
                                        fontSize: 12),
                                  )
                                ],
                              ),
                            ),
                            
                            //More icons:
                            Icon(Icons.more_horiz)
                          ],
                        ),
                      ),
                    ),

                    //space:
                    SizedBox(
                      height: 1,
                    ),
                    
                    //2.Team Meeting:
                    Container(
                      height: 200,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.black),
                          boxShadow: [BoxShadow(offset: Offset(0, 5))]),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                            SizedBox(
                              width: 210,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [

                                  //Team:
                                  Row(
                                    children: [
                                      Expanded(
                                        flex: 10,
                                        child: Text(
                                          'Team Meeting',
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      
                                      
                                      Expanded(
                                          flex: 1,
                                          child: Icon(Icons.more_horiz))
                                    ],
                                  ),

                                  //Desine:
                                  Text(
                                    '(Desiner and Developer)',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),

                                  //space:
                                  SizedBox(
                                    height: 5,
                                  ),

                                  //time:
                                  Text(
                                    '10.45 am - 11.45 am',
                                    style: TextStyle(
                                        color: Colors.black.withOpacity(.5),
                                        fontSize: 12),
                                  ),

                                  //space:
                                  SizedBox(
                                    height: 6,
                                  ),

                                  //Optimize:
                                  Container(
                                    height: 40,
                                    decoration: BoxDecoration(
                                        color: Colors.black.withOpacity(.1),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Center(
                                        child: Text(
                                            'Optimize Website for Rune.io')),
                                  ),


                                  //space:
                                  SizedBox(
                                    height: 10,
                                  ),


                                  //Image
                                  Row(
                                    children: [
                                       Expanded(
                                         flex:10 ,
                                         child: Row(
                                           children: [
                                             Container(
                                               height: 40,
                                               width: 100,
                                               child: Stack(
                                                 children: [
                                                   Container(
                                                     height: 40,
                                                     width: 40,
                                                     decoration: BoxDecoration(
                                                         shape: BoxShape.circle,
                                                         image: DecorationImage(
                                                             image: AssetImage(
                                                                 'assets/images/whatapp/bg_whatapp.webp'))),
                                                   ),
                                                   Positioned(
                                                     left: 30,
                                                     child: Container(
                                                       height: 40,
                                                       width: 40,
                                                       decoration: BoxDecoration(
                                                           shape: BoxShape.circle,
                                                           image: DecorationImage(
                                                               image: AssetImage(
                                                                   'assets/images/whatapp/bg_whatapp.webp'))),
                                                     ),
                                                   ),
                                                   Positioned(
                                                     right:1,
                                                     child: Container(
                                                       height: 40,
                                                       width: 40,
                                                       decoration: BoxDecoration(
                                                           shape: BoxShape.circle,
                                                           image: DecorationImage(
                                                               image: AssetImage(
                                                                   'assets/images/whatapp/bg_whatapp.webp'))),
                                                     ),
                                                   ),
                                                 ],
                                               ),
                                             ),
                                           ],
                                         ),
                                       ),

                                        SizedBox(
                                          width: 20,
                                        ),


                                      Expanded(
                                          flex: 1,
                                          child: Icon(Icons.arrow_forward_ios))
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),


                    //space:
                    SizedBox(
                      height: 1,
                    ),
                    //3.empty box:
                    Container(
                        height: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.black),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 5)
                          )
                        ]
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          children: [
                            Text('Add new subtask',style: TextStyle(

                              color: Colors.black.withOpacity(.5),

                            ),),

                            SizedBox(
                              width: 100,
                            ),

                            Icon(Icons.add_circle_outlined,size: 35,)
                          ],
                        ),
                      ),
                    ),

                    //4.HomePage:
                    Container(
                      height: 100,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.black),
                          boxShadow: [BoxShadow(offset: Offset(0, 5))]),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 210,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  //server:
                                  SizedBox(
                                    width: 170,
                                    child: Text(
                                      'Optimize HomePage Desin',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),

                                  //space:
                                  SizedBox(
                                    height: 10,
                                  ),

                                  //time:
                                  Text(
                                    '03.00 pm - 04-45 am',
                                    style: TextStyle(
                                        color: Colors.black.withOpacity(.5),
                                        fontSize: 12),
                                  )
                                ],
                              ),
                            ),

                            //More icons:
                            Icon(Icons.more_horiz)
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          )
        ]),
      ),
    );
  }
}
