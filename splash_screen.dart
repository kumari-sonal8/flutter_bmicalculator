import 'dart:async';

import 'package:bmi_fourth/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class splash_screen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return splash_screenstate();
}


}
class splash_screenstate extends State<splash_screen>{
  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 4),(){
      Navigator.pushReplacement(context,
      MaterialPageRoute(builder: (context)=>MyHomePage()));
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        width:double.infinity,
        height:double.infinity,
        color: Colors.indigo,
        child:Center( child: Column( mainAxisAlignment: MainAxisAlignment.center, children: [ Text("bmi",style:TextStyle(fontSize:55,color:Colors.white)),
          SizedBox(height: 11,),
          Text('bmi calculator for adult above 18',style: TextStyle(fontSize: 25,color: Colors.white),)

       ] )
        ) )
    );
  }
}