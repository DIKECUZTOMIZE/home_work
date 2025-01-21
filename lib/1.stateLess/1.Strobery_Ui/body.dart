import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class StroberryBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).orientation == Orientation.landscape) {
      return Row(
      children: [

        Expanded(child:getOneUi()),

        SizedBox(width: 11,),

        Expanded(child:SingleChildScrollView(child:  getTowUi())),
      ],
    );
    } else {
      return Column(
      children: [
        getOneUi(),
        getTowUi()
      ],
    );
    }
  }

  getOneUi(){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          //Image:
          Container(

            height: 300,
            width: double.infinity,
            decoration: BoxDecoration(

                color: Color(0xff0f30d3),
                image: DecorationImage(
                    image: AssetImage("assets/images/bg_cake.jpeg"),
                    fit: BoxFit.cover)),
          ),

        ],
      ),
    );
  }

  getTowUi(){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [

          SizedBox(height: 11,),
          //Name Details:
          Container(
            child: Column(
              children: [
                //Name:
                Container(
                  width: double.infinity,
                  height:40,

                  child: Text(
                    "Strawberry Pavlova",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  decoration: BoxDecoration(
                      color: Color(0xffE6F0FA),
                      border: Border.all(
                        color: Colors.black,
                      )),
                ),

                //space:
                SizedBox(
                  height: 20,
                ),


                //Discription:
                Container(
                  decoration: BoxDecoration(
                    color: Color(0XFFE6F0FA),
                    border: Border.all(color: Colors.black),

                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Text(
                      "Pavlova is meringue-based"
                          "dessert named after the Russian"
                          "ballerine a crisp crust and"
                          "soft,kight inside,topped with fuirt"
                          "and whipped cream.",
                      style: TextStyle(fontSize: 20,),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),

                //space:
                SizedBox(
                  height: 20,
                ),

                //Star:
                Container(

                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color( 0XFFE6F0FA),
                    border: Border.all(color: Colors.black),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            size: 20,
                            color: Color(0xff000000).withOpacity(.5),
                          ),
                          Icon(
                            Icons.star,
                            size: 20,
                            color: Color(0xff000000).withOpacity(.5),
                          ),
                          Icon(
                            Icons.star,
                            size: 20,
                            color: Color(0xff000000).withOpacity(.5),
                          ),
                          Icon(
                            Icons.star,
                            size: 20,
                            color: Color(0xff000000).withOpacity(.5),
                          ),
                          Icon(
                            Icons.star,
                            size: 20,
                            color: Color(0xff000000).withOpacity(.5),
                          ),
                        ],
                      ),
                      Text(
                        "170 Reviews",
                        style: TextStyle(fontWeight: FontWeight.bold,
                            fontSize: 17),
                      ),
                    ],
                  ),
                ),

                //space:
                SizedBox(
                  height: 20,
                ),

                //Icons
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      color: Color(0XFFE6F0FA)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Icon(
                              Icons.kitchen,size: 50,color: Colors.black.withOpacity(.5),

                            ),
                            Text(
                              "PRFE:",

                            ),
                            Text(
                              "1hr",

                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(Icons.alarm,size: 50,color: Colors.black.withOpacity(.5), ),
                            Text(
                              "CLOCK",
                              style: TextStyle( ),
                            ),
                            Text(
                              "30 min",
                              style: TextStyle( ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(Icons.restaurant,size: 50,color: Colors.black.withOpacity(.5),  ),
                            Text(
                              "ITEMS:",
                              style: TextStyle( ),
                            ),
                            Text(
                              "24 hr ",
                              style: TextStyle( ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
