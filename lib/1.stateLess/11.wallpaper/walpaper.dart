
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:home_work/1.stateLess/11.wallpaper/page1.dart';


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

  List<Map<String, dynamic>> myImage = [

    {
      'img'   : 'assets/images/whatapp/bg_abstrac.jpeg'
    },
    {
      'img'   : 'assets/images/whatapp/bg_animal.jpeg'
    },
    {
      'img'   : 'assets/images/whatapp/bg_classic.jpg'
    },
    {
      'img'   : 'assets/images/whatapp/bg_naturea.jpg'
    },
    {
      'img'   : 'assets/images/whatapp/bg_whatapp.webp'
    },


  ];
  List<Map<String ,dynamic>>myColors=[

    {'color'    : Colors.orange},
    {'color'    : Colors.green},
    {'color'    : Colors.blue},
    {'color'    : Colors.red},
    {'color'    : Colors.purple},
    {'color'    : Colors.black},
    {'Color'    : Colors.yellow}
  ];

@override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white.withOpacity(.9),
        appBar: AppBar(
          backgroundColor: Colors.white.withOpacity(.2),
          title:  TextField(
            
            decoration: InputDecoration(
              suffixIcon: Icon(Icons.search_rounded,size: 30,color: Colors.black.withOpacity(.2),),
              hintText:'Find Wallpaper...',
                hintStyle:  TextStyle(
                  color: Colors.black.withOpacity(.4)
                ),

                fillColor: Colors.white,
                filled: true,
                
                focusedBorder:OutlineInputBorder(borderRadius: 
            BorderRadius.circular(10),
  borderSide: BorderSide(color: Colors.white)),
              
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.white)
              )
            ),

          )
        ),
        body: Padding(
          padding: const EdgeInsets.all(15),
          child:  ListView(

            children: [
              Text('Best of the month',style: TextStyle(
                fontSize: 20,fontWeight: FontWeight.bold,
              ),),

              SizedBox(
                height: 15,
              ),

              Container(
                height: 250,
                width: double.infinity,
                  child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 1,
                          childAspectRatio: 3/2,
                          mainAxisSpacing: 11,
                          crossAxisSpacing: 11),
                      scrollDirection: Axis.horizontal,
                      itemCount:myImage.length,
                      itemBuilder: (context, index) =>
                          Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius:BorderRadius.circular(15),
                              image: DecorationImage(image:
                              AssetImage(
                                  myImage [index]['img']),fit:
                              BoxFit.cover),
                            ),
                          ),)),

              SizedBox(
                height: 15,
              ),

              Text('The color tone',style: TextStyle(
                fontSize: 20,fontWeight: FontWeight.bold
              ),),

              SizedBox(
                height: 15,
              ),

              Container(
                height: 60,
                width: double.infinity,

                child: GridView.builder(
                    gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount:1,
                    childAspectRatio: 2/2,
                    crossAxisSpacing: 11,
                    mainAxisSpacing: 11),
                  scrollDirection: Axis.horizontal,
                  itemCount: myColors.length,
                  itemBuilder:(context, index) =>
                      Container(
                    decoration: BoxDecoration(
                      color: myColors[index]['color'],
                      borderRadius: BorderRadius.circular(10)
                    ),

                  ) ,  ),
              ),

              SizedBox(
                height: 20,
              ),


              Text('Catagory',style: TextStyle(
                fontWeight: FontWeight.bold,fontSize: 20,
              ),),

              SizedBox(
                height: 30,
              ),

              StaggeredGrid.count(crossAxisCount:  2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              children: [

                Container(
                  height: 150,
                  width: 100,

                  decoration: BoxDecoration(
                      color: Colors.green,
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(image:
                    AssetImage('assets/images/whatapp/bg_abstrac.jpeg'),fit: BoxFit.cover)
                  ),
                  child: Center(
                    child: Text( 'Abstarack',style: TextStyle(
                      color: Colors.white,fontSize: 20,
                    ),),
                  ),
                ),

                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder:
                    (context) => page1(),));
                  },
                  child: Container(
                    height: 150,
                    width: 100,

                    decoration: BoxDecoration(
                        color: Colors.green,
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(image:
                      AssetImage('assets/images/whatapp/bg_naturea.jpg'),
                      fit: BoxFit.cover)
                    ),
                    child: Center(
                      child: Text( 'Nature',style: TextStyle(
                        color: Colors.white,fontSize: 20,
                      ),),
                    ),
                  ),
                ),

                Container(
                  height: 150,
                  width: 100,

                  decoration: BoxDecoration(
                      color: Colors.green,
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image:  AssetImage('assets/images/whatapp/bg_classic.jpg'),fit:BoxFit.cover)
                  ),
                  child: Center(
                    child: Text( 'Classic',style: TextStyle(
                      color: Colors.white,fontSize: 20,
                    ),),
                  ),
                ),

                Container(
                  height: 150,
                  width: 100,

                  decoration: BoxDecoration(
                      color: Colors.green,
                    image: DecorationImage(image:  AssetImage('assets/images/whatapp/bg_animal.jpeg'),fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Center(
                    child: Text( 'Animal',style: TextStyle(
                      color: Colors.white,fontSize: 20,
                    ),),
                  ),
                ),
              ],)

            ],
          ),
        ));
  }
}
