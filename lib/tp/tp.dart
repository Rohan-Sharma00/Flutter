import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import "package:flutter_testapp/tp/tp2.dart";



class tp extends StatefulWidget{

  @override
  State<StatefulWidget> createState(){
    return tpState();
  }
}


class tpState extends State<tp>{

int count=0;

  @override
  Widget build(BuildContext context)
  {
      return Scaffold(
        appBar: AppBar(
          title:Text("Stateful widget"),
          backgroundColor:Colors.yellow
        ),
        body: Container(
          height:double.infinity,
          width:double.infinity,
          color:Colors.pink,
          child:Column(
            children: [
              Text("Hello world !"),
              SizedBox(
                height:50,
                width:250,
                child:ElevatedButton(
                  onPressed:(){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder:(context){
                          return sample("indira college");
                        })
                      );
                  },
                  child: Text("go to next page"))
              )
            ],
          )
        )
      );
  }
}