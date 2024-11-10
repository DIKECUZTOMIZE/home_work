import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';




void main(){
  runApp(App());
}

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
     return MaterialApp(
       home:HomePage() ,
     );
  }
}

class HomePage extends StatefulWidget{

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  TextEditingController billAmountController= TextEditingController();

 int perCount=1;
 int tipPecent =0;
 num totalBillAmt=0.0;
 num totalTipAmt=0.0;
 num totalAmt=0.0;
 num perPersonAmt=0.0;


  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        backgroundColor:Colors.white.withOpacity(.9),
        body:

        //new
        Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [

              //1.tip:
              Expanded(flex: 2,child:getTiTalePart1() ),

              //2.total:
             Expanded(flex: 4,child: getTotalparsonPart2()),

              //3.enter:
              Expanded(flex: 2,child:getBillPart3() ),

              //4.choose:
             Expanded(flex: 2,child: getTipPart4()),

              //5.split:
              Expanded(flex: 1,child: getSplitPart5() ),



            ],
          ),
        ),


      ),
    );
  }

  //1.function:
  Widget getTiTalePart1 (){
    return   Row(
      mainAxisAlignment: MainAxisAlignment.center,

      children: [
        //Icons cape:
        Image(
          image: AssetImage( 'assets/images/bg_cap.png'),height:70,
          width: 60,),

        SizedBox(
          width: 10,
        ),
        //Text :
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            //iat row loi o bonabo pare nijr isa :
            Text.rich(TextSpan(
                text: 'Mr',style: TextStyle(
              fontSize: 16,),
                children: [

                  TextSpan(text: 'TIP',style: TextStyle(
                      fontSize: 30,fontWeight: FontWeight.bold
                  ))

                ])),

            Text('Calculator',style: TextStyle(
                fontSize: 20,fontWeight: FontWeight.bold
            ),)


          ],
        )
      ],
    );
  }

  // ..part2
  Widget getTotalparsonPart2 (){
    return Card(
        elevation:8,
        color: Colors.white,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(21)),
        child: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                Text('Total p/person',style: TextStyle(
                    fontSize: 20,fontWeight: FontWeight.bold
                ),),

                Text.rich(
                    TextSpan(text: '\$',style:TextStyle(
                        fontSize: 20,fontWeight: FontWeight.bold),
                        children: [
                          TextSpan(
                              text: '000',style: TextStyle(
                            fontSize: 50,
                          )
                          )
                        ])),

                Divider(),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [

                        Text('Total bill',style: TextStyle(
                          fontSize: 16,color: Colors.black.withOpacity(.5),
                        ),),

                        Text.rich(TextSpan(
                            text: '\$',style: TextStyle(
                            color: Colors.blueAccent),
                            children: [
                              TextSpan(text: '000',style: TextStyle(
                                  fontSize: 20
                              ))
                            ])),

                      ],
                    ),

                    Column(
                      children: [
                        Text('Total tip',style:
                        TextStyle(color: Colors.black.withOpacity(.5),
                            fontSize: 16),),

                        Text.rich(TextSpan(text: '\$',style: TextStyle(
                            color: Colors.blueAccent
                        ),children: [
                          TextSpan(text: '000',style: TextStyle(
                              color: Colors.blue,fontSize: 20
                          ))
                        ]))

                      ],
                    )
                  ],
                )


              ],
            ),
          ),
        ));
  }

  Widget getBillPart3(){
   return   Row(

     children: [

       Expanded(
           flex: 2,
           child:Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Text('Enter',style: TextStyle(
                   fontSize: 20,fontWeight:FontWeight.bold
               ),),

               Text( 'your bill',style: TextStyle(
                   color: Colors.black.withOpacity(.5),
                   fontSize: 17,fontWeight:FontWeight.w500
               ),)
             ],
           )  ),

       Expanded(
           flex: 5,
           child:  TextField(
             controller: billAmountController,
             keyboardType: TextInputType.number,
             decoration: InputDecoration(

               fillColor: Colors.white,
               filled: true,
               prefixText: '\$',
               border: OutlineInputBorder(borderRadius:
               BorderRadius.circular(5),
                   borderSide: BorderSide(
                       color: Colors.white,width: 1)),
             ),
           ))

     ],
   );
  }

  Widget getTipPart4(){
    return  Row(
      children: [
        Expanded(
          flex: 2,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text('Choose',style: TextStyle(
                fontSize: 20,fontWeight: FontWeight.w900,
              ),),
              Text('your tip',style: TextStyle(
                color: Colors.black.withOpacity(.5),
                fontSize: 17,fontWeight: FontWeight.w500,
              ),),
            ],
          ),
        ),

        Expanded(
          flex: 5,
          child: Column(

            children: [

              Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: (){
                        tipPecent=10;
                        updateTheResult();
                      },

                      child: Container(
                        height: 60,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Color(0xff03c9bd),
                            borderRadius: BorderRadius.circular(5)
                        ),

                        child: Center(
                          child: Text('10%',style: TextStyle(
                            color: Colors.white,fontSize: 21,fontWeight: FontWeight.w900,
                          ),),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(
                    width: 10,
                  ),

                  Expanded(
                    child: InkWell(

                      onTap: (){
                        tipPecent=15;
                        updateTheResult();
                      },
                      child: Container(
                        height: 60,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Color(0xff03c9bd),
                            borderRadius: BorderRadius.circular(5)
                        ),

                        child: Center(
                          child: Text('25%',style: TextStyle(
                            color: Colors.white,fontSize: 21,fontWeight: FontWeight.w900,
                          ),),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(
                    width: 10,
                  ),

                  Expanded(
                    child: InkWell(
                      onTap: (){
                         tipPecent=20;
                         updateTheResult();
                      },
                      child: Container(
                        height: 60,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Color(0xff03c9bd),
                            borderRadius: BorderRadius.circular(5)
                        ),

                        child: Center(
                          child: Text('20%',style: TextStyle(
                            color: Colors.white,fontSize: 21,fontWeight: FontWeight.w900,
                          ),),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(
                height: 10,
              ),

              Container(
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Color(0xff03c9bd),
                    borderRadius: BorderRadius.circular(5)
                ),

                child: Center(
                  child: Text('Cuztom tip',style: TextStyle(
                    color: Colors.white,fontSize: 21,fontWeight: FontWeight.w900,
                  ),),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }

  Widget getSplitPart5(){
    return Row(
      children: [

        Expanded(
          flex: 2,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Split',style: TextStyle(
                fontSize: 21,fontWeight: FontWeight.w900,
              ),),
              Text('the total',style: TextStyle(
                  color: Colors.black.withOpacity(.5),
                  fontSize: 16,fontWeight: FontWeight.w500
              ),)

            ],
          ),
        ),

        Expanded(
          flex: 5,
          child: Row(
            children: [

              Expanded(
                child: InkWell(

                  onTap: (){
                    perCount--;
                    updateTheResult();
                  },
                  child: Container(
                    height: 60,
                    width: double.infinity,
                    decoration: BoxDecoration(

                      color:Color(0xff03c9bd),

                      borderRadius: BorderRadius. only(bottomLeft: Radius.circular(5),
                          topLeft: Radius.circular(5)
                      ),),

                    child: Center(
                      child: Text('-',style: TextStyle(
                          fontSize: 40,fontWeight: FontWeight.w900,
                          color: Colors.white
                      ),),
                    ),
                  ),
                ),
              ),

              Expanded(
                flex: 2,
                child: InkWell(
                  onTap: (){
                    if(perCount>1){
                      perCount--;
                    }
                    updateTheResult();
                  },
                  child: Container(
                    height: 60,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),

                    child: Center(child: Text('$perCount',style: TextStyle(
                        fontSize: 20,fontWeight: FontWeight.w900
                    ),)),

                  ),
                ),
              ) ,

              Expanded(
                child: InkWell(
                  onTap: (){
                    perCount++;
                    updateTheResult();

                  },
                  child: Container(
                    height: 60,
                    width: double.infinity,
                    decoration: BoxDecoration(

                        color:Color(0xff03c9bd) ,

                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(5),
                            topRight: Radius.circular(5)
                        )),

                    child: Center(
                      child: Text('+',style: TextStyle(
                          fontSize: 40,fontWeight: FontWeight.w900,
                          color: Colors.white
                      ),),
                    ),
                  ),
                ),
              ),

            ],),
        )
      ],
    );
  }

  void updateTheResult(){

    if(billAmountController.text!=''){
    totalBillAmt=double.parse( billAmountController.text.toString());
  totalTipAmt=totalBillAmt*(tipPecent/100);
  totalAmt=totalBillAmt+totalTipAmt;
  perPersonAmt=totalAmt/perCount;

  setState(() {});
}else{
      perCount=1;
    }
}}



//judi nose r tolot use safe area
//1.kimane container select
//2.space:wite flex,
//