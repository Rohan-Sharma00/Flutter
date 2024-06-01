import 'package:flutter/material.dart';



class sample extends StatefulWidget{

  String count;

  sample(this.count);


  @override
  State<StatefulWidget> createState(){
    return SampleState();
  }
}

class SampleState extends State<sample>{

  @override
  Widget build(BuildContext context)
  {
      return Scaffold(
        appBar: AppBar(
          title:Text("screen 2"),
          backgroundColor:Colors.green
        ),
        body: Container(
          height:double.infinity,
          width:double.infinity,
          color:Colors.orange,
          child:Text("we are in new screen ! = ${widget.count}")
        )
      );
  }
}