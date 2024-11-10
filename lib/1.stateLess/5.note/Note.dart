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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          children: [
            Expanded(
              child: Text('Notes',style: TextStyle(
                color: Colors.white,fontSize: 40,
              ),),
            ),
            
            Icon(Icons.search_outlined,size: 30,color: Colors.white,)
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child:  ListView(children: [

        //1.Grid View use tow :
        SizedBox(
          height: 220,
          width:  double.infinity,
          
         //GrideView t use kurile fristtote size lobo lage:
          child: GridView.count(crossAxisCount:  2,
          childAspectRatio: 2.2/3,
          mainAxisSpacing: 11,
          crossAxisSpacing: 11,
           children: [

             //1.How to make:
             Container(

              decoration: BoxDecoration(
                color: Colors.deepOrangeAccent,
                borderRadius: BorderRadius.circular(15)
              ),
               child: Padding(
                 padding: const EdgeInsets.all(14),
                 child: Column(
                   children: [
                     Text('How to make your personal brand stand'
                         'out online',style: TextStyle(
                       fontSize: 20,fontWeight: FontWeight.w500
                     ),),

                     SizedBox(
                       height: 10,
                     ),
                     Text('May 21,2020',style: TextStyle(
                       color: Colors.black.withOpacity(.5),
                       fontSize: 16
                     ),)
                   ],
                 ),
               ),

             ),

             //2.Beautifull:
             Container(
               decoration:  BoxDecoration(
                   color: Colors.green,
                 borderRadius: BorderRadius.circular(15)
               ),
               child: Padding(
                 padding: const EdgeInsets.all(20),
                 child: Column(
                   children: [

                     Text(
                       'Beautiful weather app UI concept we wish exsited',
                       style: TextStyle(
                       fontSize: 20,fontWeight: FontWeight.w500,
                     ),),

                     SizedBox(
                       height: 10,
                     ),
                     Text('Mar 18,2020',style: TextStyle(
                       fontSize: 15,color: Colors.black.withOpacity(.5)
                     ),
                     )
                   ],
                 ),
               ),
             ),
           ],),
        ),

        //space:
        SizedBox(
          height: 10,
        ),

        //2.10 excellent
        Container(
          height: 180,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius:BorderRadius.circular(10),
            gradient: LinearGradient(
                colors:[
                  Colors.blue,
                  Colors.red
                ]  )
          ),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text('10 excellent font pairing tools for desiners',style: TextStyle(
                  fontSize: 25,fontWeight: FontWeight.w500),),
                Text('Feb 01,2020',style: TextStyle(
                  color: Colors.black.withOpacity(.5),
                  fontSize: 15
                ),)
              ],
            ),
          ),
        ),

        //space:
        SizedBox(
          height: 10,
        ),

        //3.Multiple stagreed:
          StaggeredGrid.count(
              crossAxisCount:2,
              crossAxisSpacing: 11,
              mainAxisSpacing:11 ,

          children: [

            //1.Spotify:
            Container(
              height: 330,
              width: double.infinity,

              decoration: BoxDecoration(
                color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.circular(10)
              ),
              child: Padding(
                padding: const EdgeInsets.all(30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Spotify\'s Reema Bhagat on product desin,music,and the'
                        'key to a happy career',style: TextStyle(
                      fontSize: 20,fontWeight: FontWeight.w500,
                    ),),

                    SizedBox(
                      height: 10,
                    ),

                    Text(
                      'Feb 01,2020',style: TextStyle(
                      fontSize: 15,color: Colors.black.withOpacity(.5)
                    ),)
                  ],
                ),
              ),
            ),

            //2.12eye :
            Container(
              height: 200,
              width: double.infinity,


                decoration: BoxDecoration(

                  color: CupertinoColors.systemPurple,
                  borderRadius: BorderRadius.circular(10),
                ),

              child: Padding(
                padding: const EdgeInsets.all(25),
                child: Column(

                  children: [
                    Text('12 eye-catching mobile wallpaper',style: TextStyle(
                      fontSize: 20,fontWeight: FontWeight.w500,

                    ),),

                    //space:
                    SizedBox(
                      height: 10,
                    ),

                    Text('Feb 01,2020',style: TextStyle(
                      color:Colors.black.withOpacity(.5),
                      fontSize: 15
                    ),)
                  ],
                ),
              ),
            ),

            //3.Desing:
            Container(
              height: 230,
              width: double.infinity,

                decoration: BoxDecoration(

                  color: CupertinoColors.systemPurple,
                  borderRadius: BorderRadius.circular(10),
                ),

              child: Padding(
                padding: const EdgeInsets.all(25),
                child: Column(

                  children: [
                    Text(' Desingn For Good: Join The Face Mask'
                        ' Challenge',style: TextStyle(
                      fontSize: 20,fontWeight: FontWeight.w500,

                    ),),
                    SizedBox(
                      height: 10,
                    ),

                    Text('Feb 01,2020',style: TextStyle(
                      color:Colors.black.withOpacity(.5),
                      fontSize: 15
                    ),)
                  ],
                ),
              ),
            ),

            //4.eye
            Container(
              height: 150,
              width: double.infinity,
              
              decoration: BoxDecoration(
                color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.circular(10),
              ),
              
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Text('eye-catcing mobile ,Good desine',style: TextStyle(
                      fontSize: 20,fontWeight: FontWeight.w500,
                    ),),

                    Text('Feb 01,2020',style: TextStyle(
                      color: Colors.black.withOpacity(.5),
                      fontSize: 15
                    ),)

                  ],
                ),
              ),
            )

          ],)
        ],)
      ),
    );
  }


  }

