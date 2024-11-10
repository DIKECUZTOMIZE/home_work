
import 'package:flutter/material.dart';
import 'package:home_work/2.stateFull/sharepreferenc/logoutPage/homePage.dart';
import 'package:shared_preferences/shared_preferences.dart';

//Stat less lua hoise karon iat okl set lua hoise user pora ,get kora nai karone
//data show kora najai iat okl lua hoi:
class LogOutPage extends StatelessWidget {


  //Static bona goise jate confuse dur logout namor:
  static const String LOGOUTKEY= 'logout';

  @override
  Widget build(BuildContext context) {

     return SafeArea(
       child: Scaffold(
         backgroundColor: Colors.purple,
         appBar: AppBar(
           centerTitle: true,
           title: Text('LoginPage'),
       
         ),
         body: Center(
           child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
       
             children: [
       
             ElevatedButton(onPressed: ()async{
       
               SharedPreferences prefs=await SharedPreferences.getInstance();

               //iat set bool lua hoise karon loging ya logout page bonuar babe
               //true login tu true hole enter hobo hompage:
               prefs.setBool(LOGOUTKEY, true);

               Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>HomePage()));
       
             }, child: Text(LOGOUTKEY,style: TextStyle(fontSize: 50),))
       
           ],),
         ),
       ),
     );
  }
}