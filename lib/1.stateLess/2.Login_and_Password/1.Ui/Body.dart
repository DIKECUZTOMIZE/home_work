import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:home_work/1.stateLess/2.Login_and_Password/1.Ui/l_pcolors_page.dart';
import 'package:home_work/1.stateLess/2.Login_and_Password/1.Ui/uiHelper.dart';

class LoginAndPasswordBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Padding(
        padding:  EdgeInsets.symmetric(horizontal: 21),
        child: Column(children: [
          Container(
              height:400,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(20),
                ),
                color: Color(0xffa677ef),
              ),
              child: Padding(
                padding:  EdgeInsets.symmetric(horizontal: 21),
                child: Column(

                    children: [

                  SizedBox(height: 100,),

                  Center(
                    child: Text("Login",
                        style: TextStyle(
                            color: Color(0xffffffff),
                            fontSize: 40,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center),
                  ),


                  SizedBox(
                    height: 40,
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.account_circle,color: Colors.black.withOpacity(.5),),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: Colors.white)
                        ),
                        fillColor: mColors.PrimaryColors,

                        filled: true,
                        hintText: "Email,MobileNo",
                        hintStyle: TextStyle(color: Colors.black.withOpacity(.5))
                      ),
                    ),
                  ),

                  mSpacing(),

                  SizedBox(
                    height: 40,
                    child: TextField(


                      decoration: InputDecoration(

                        prefixIcon: Icon(Icons.lock, color: Colors.black.withOpacity(.5),),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: Colors.white)
                        ),
                        fillColor: mColors.PrimaryColors,

                        filled: true,
                        hintText: "Password",
                        hintStyle: TextStyle(color: Colors.black.withOpacity(.5))
                      ),
                    ),
                  ),

                   mSpacing(),

                  //Login Button:
                  Container(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text('Login',
                        style: TextStyle(
                            color: Colors.white.withOpacity(.8),
                            fontWeight: FontWeight.bold),
                      ),
                      style: ButtonStyle(
                          backgroundColor:
                              WidgetStateProperty.all(Color(0xff2f49d8))),
                    ),
                  ),

                  //Space:
                  SizedBox(
                    height: 11,
                  ),

                  //Forget Text
                  Text(
                    "Forgrt your passeord?",
                    style: TextStyle(
                        color: Color(0xffffffff), fontWeight: FontWeight.bold),
                  )
                ]),
              )),


          //2.Column:
          // Space:
          SizedBox(
            height: 70,
          ),

          //Text connect
          Text(
            "of connect with",
            style: TextStyle(color: Color(0xff000000).withOpacity(.5)),
          ),

          //Space:
          SizedBox(
            height: 25,
          ),

          //Tow Button:Face/Twit
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
           //Facebook Button:
            Container(
              width: 140,
              height: 35,
              decoration: BoxDecoration(
                  color: Color(0xff4e8fe4),
                  borderRadius: BorderRadius.circular(20)),
              child: Padding(padding: EdgeInsets.only(left: 20),
                 child: Row(
                children: [
                //   SizedBox(width: 10),
                Icon(
                Icons.facebook,
                color: Color(0xffffffff),
              ),
            SizedBox(
              width: 10,
            ),
            Text(
              "Facebook",
              style: TextStyle(
                  color: Color(0xffffffff), fontWeight: FontWeight.bold),
            ),
            ],
          ),),
            ),
            //Space:
            SizedBox(
              width: 20,
            ),

            //Twiter Button:
            Container(
                width: 140,
                height: 35,
                decoration: BoxDecoration(
                    color: Color(0xff3d57e1),
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(padding: EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Icon(
                      Icons.biotech_rounded,
                      color: Color(0xffffffff),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Twiter",
                      style: TextStyle(
                          color: Color(0xffffffff),
                          fontWeight: FontWeight.bold),
                    )
                  ],
                )
            ),
          ),]),

          //Space:
          SizedBox(height: 60),

          //Text Dont Have:
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Dont have account?",
                  style: TextStyle(color: Colors.black.withOpacity(.5)),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Sing up",
                  style: TextStyle(color: Colors.black.withOpacity(.5)),
                ),
              ],
            ),
          )
        ]
          ),
      ),
    );
  }
}
