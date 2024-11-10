import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';




class HomePageW extends StatelessWidget{

  List<Map<String,dynamic>>myData=[

    
    {
      'img'    : 'assets/images/whatapp/bg_whatapp.webp',
      'name'     : 'sanjit',
      'massage'  : 'Hi'  ,
      'time'     : '9.3pm'    ,
      'count'    : '2'

    },
    {
      'img'    : 'assets/images/whatapp/bg_classic.jpg',
      'name'     : 'Sumi',
      'massage'  : 'Good'  ,
      'time'     : '10pm'   ,
      'count'    : '3'

    },
    {
      'img'    : 'assets/images/whatapp/bg_whatapp.webp',
      'name'     : 'biswajit',
      'massage'  : 'Good'  ,
      'time'     : '10pm'   ,
      'count'    : '6'

    },
    {
      'img'    : 'assets/images/whatapp/bg_naturea.jpg',
      'name'     : 'Black',
      'massage'  : 'bad'  ,
      'time'     : '10pm'   ,
      'count'    : '1'

    },
    {
      'img'    : 'assets/images/whatapp/bg_whatapp.webp',
      'name'     : 'noyan',
      'massage'  : 'ok'  ,
      'time'     : '10pm'   ,
      'count'    : '10'

    },
    {
      'img'    : 'assets/images/whatapp/bg_naturea.jpg',
      'name'     : 'pabon',
      'massage'  : 'thaks'  ,
      'time'     : '10pm'   ,
      'count'    : '4'

    },
    {
      'img'    : 'assets/images/whatapp/bg_whatapp.webp',
      'name'     : 'rusali',
      'massage'  : 'nice'  ,
      'time'     : '6pm'   ,
      'count'    : '4'

    },
    {
      'img'    : 'assets/images/whatapp/bg_animal.jpeg',
      'name'     : 'gunu',
      'massage'  : 'kot'  ,
      'time'     : '10am'   ,
      'count'    : '6'

    },
    {
      'img'    : 'assets/images/whatapp/bg_naturea.jpg',
      'name'     : 'raju',
      'massage'  : 'ghar'  ,
      'time'     : '9am'   ,
      'count'    : '3'

    },
    {
      'img'    : 'assets/images/whatapp/bg_abstrac.jpeg',
      'name'     : 'gorjen',
      'massage'  : 'thik hai'  ,
      'time'     : '10pm'   ,
      'count'    : '0'

    },
  ];

  String count='';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:
        Row(
          children: [
            Expanded(
              child: Text('Whatapp',style: TextStyle(
                color: Colors.green,fontSize: 30
              ),),
            ),
            Row(
              children: [
                Icon(Icons.qr_code_scanner),

                SizedBox(
                  width: 30,
                ),
                
                Icon(Icons.camera_alt_outlined),

                SizedBox(
                  width: 20,
                ),
                
                Icon(Icons.more_vert)
              ],
            )
          ],
        ),
      ) ,

      body:Padding(
        padding: const EdgeInsets.all(5),
        child: Column(
          children: [

            /// TextField
            SizedBox(
                height:55,
             width: double.infinity,
             
             child:     TextField(
               
               decoration: InputDecoration(
                 fillColor: Colors.grey.withOpacity(.1),
                 filled: true,
                 hintText: 'Ask Meta AI or Search',
                 hintStyle: TextStyle(color: Colors.black.withOpacity(.5),
                 fontSize: 16),
                 
                 enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(40),
                 borderSide: BorderSide(color: Colors.white,)),
                 focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(40),
                 borderSide: BorderSide(color: Colors.white))
               

               ),
             )),

            /// space
            SizedBox(
              height: 10,
            ),

            /// ListView
            Expanded(
              child: ListView.builder(
                  itemCount: myData.length,
                  itemBuilder:(context, index) =>
                        Column(
                          children: [
                            ListTile(

                              /// profile image:
                            leading:CircleAvatar(
                             maxRadius: 30,
                              backgroundImage: AssetImage(
                              myData[index]['img']),) ,

                              /// name
                              title: Text(myData[index]['name'],style: TextStyle(
                                fontSize: 20,fontWeight: FontWeight.bold,

                              ),),

                              /// mess
                              subtitle:Text(myData[index]['massage'],style: TextStyle(
                                fontSize: 17,color: Colors.black.withOpacity(.5)
                              ),) ,

                              ///  time and count
                              trailing: Column(
                                 children: [

                                   ///  time
                                   Text(myData[index]['time']),

                                   ///  space
                                   SizedBox(
                                     height: 10,
                                   ),

                                   ///  count
                                   CircleAvatar(
                                     foregroundColor: Colors.white,
                                     backgroundColor: Colors.green,
                                      maxRadius: 12,
                                     child:
                                   //  Text(myData[index]['count' !=0 ? '$count' : '']),
                                     Text(myData[index]['count']),
                                   ),

                                 ],
                               ),
                                                   ),
                            SizedBox(
                              height: 15,
                            )
                          ],
                        ),
                      ),
            ),

          ],
        )
            ),
    );
  }
}