import 'package:flutter/material.dart';
import "package:flutter_testapp/tp/tp.dart";
import 'dart:async';




class splash extends StatefulWidget{

  @override
  State<StatefulWidget> createState(){
    return SplashState();
  }
}

class SplashState extends State<splash>{

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5),(){
       Navigator.pushReplacement(context, MaterialPageRoute(builder:(context){
      return tp();
    })
    );
    });
   
  }

   @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      body:Container(
        height: double.infinity,
                width: double.infinity,
                color:Colors.yellow,
                child:Text("Executing the app ...") ,

      )
    );
  }
}
