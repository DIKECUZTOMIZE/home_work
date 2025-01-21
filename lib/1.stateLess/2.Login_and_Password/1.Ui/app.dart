import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:home_work/1.stateLess/2.Login_and_Password/1.Ui/l_p_splash_page.dart';

void  main(){
  runApp(LoginAndPasswordApp());
}

class LoginAndPasswordApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
     return MaterialApp(
       home:  LPSplashPage(),
     );
  }
}