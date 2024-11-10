import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main (){
  runApp(App());
}

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
     return MaterialApp(
       home: HomePage(),
     );
  }
}
class HomePage extends StatefulWidget{

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var nameController=TextEditingController();

  //value show kuribo babe:
  String name='';


  //value get kuribor babe : eta pagot
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getValueFromPrefs();
  }

  void getValueFromPrefs()async{
    SharedPreferences prefs=await SharedPreferences.getInstance();

    //If null  null value chek kora hoise
    //join kora hoise name show kuribor babe
    name= prefs.getString('name') ?? '';
    setState(() {});
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
     return Scaffold(
       appBar: AppBar(
         title: Text('Home Page'),
         centerTitle: true,
       ),

       body:Column(

         mainAxisAlignment: MainAxisAlignment.center,

         children: [

           //trenary operation
           //compear kora hoise same hoi true,same nhoi flase:
           Text(name != '' ? 'welcom $name':'' ,style: TextStyle(
             color: Colors.blue,fontSize: 50,
           ),),


           //value type kuribor babe aru controller to join kuribor babe
           //buttonr logot
           TextField(

             controller: nameController,
           ),

           ElevatedButton(onPressed:  () async{

             SharedPreferences prefs=await SharedPreferences.getInstance();

             //text feild r logot join kora hoise
             prefs.setString('name', nameController.text);

             setState(() {});


           } ,   child: Text('Save',style: TextStyle(
             fontSize: 50
           ),))
         ],
       ) ,
     );
  }
}