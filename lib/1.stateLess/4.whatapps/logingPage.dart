import 'package:flutter/material.dart';
import 'package:home_work/1.stateLess/4.whatapps/homePage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPageW extends StatelessWidget{
  static const String LOGINGKEY='login';

  @override
  Widget build(BuildContext context) {

     return Scaffold(

       body: Center(
         child: ElevatedButton(onPressed: ()async{
           SharedPreferences prefs=await  SharedPreferences.getInstance();
           prefs.setBool(LOGINGKEY, true);

           Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePageW(),));

         }, child: Text(LOGINGKEY,style: TextStyle(
           color: Colors.blue,fontSize: 20,
         ),)),
       ),

     );
  }
}