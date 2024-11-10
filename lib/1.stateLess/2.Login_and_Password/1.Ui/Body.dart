import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class LoginAndPasswordBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(children: [
          //1.Cover page:
          Container(
              height: 470,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(20),
                ),
                color: Color(0xffa677ef),
              ),
              child: Column(children: [
                //1.Column:
                //Login Text
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.only(top: 90),
                  child: Text("Login",
                      style: TextStyle(
                          color: Color(0xffffffff),
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center),
                ),

                //Email and Mobile :
                Container(
                    margin: EdgeInsets.only(top: 30, bottom: 30, left: 30, right: 30),
                    height: 40,
                    decoration: BoxDecoration(
                      color: Color(0xffffffff),
                      border: Border.all(color: Colors.white.withOpacity(.2)),
                      borderRadius: BorderRadius.circular(20),
                    ),

                    child: Padding(padding: EdgeInsets.only(left: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.manage_accounts_rounded,
                            color: Colors.black.withOpacity(.2),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Email,MobileNo",
                            style:
                                TextStyle(color: Colors.black.withOpacity(.2)),
                          )
                        ],
                      ),
                    )),

                //Password:
                Container(
                  height: 40,
                  margin: EdgeInsets.symmetric(horizontal: 30),
                  decoration: BoxDecoration(
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        Icon(
                          Icons.lock,
                          color: Color(0xff000000).withOpacity(.2),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "Password",
                          style: TextStyle(
                              color: Color(0xff000000).withOpacity(.2)),
                        ),
                      ],
                    ),
                  ),
                ),

                //Space:
                SizedBox(
                    height: 60),

                //Login Button:
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: 30),

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
                  height: 15,
                ),

                //Forget Text
                Text(
                  "Forgrt your passeord?",
                  style: TextStyle(
                      color: Color(0xffffffff), fontWeight: FontWeight.bold),
                )
              ])),


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
          )
    );
  }
}
