import 'package:flutter/material.dart';

class customWidgetButton extends StatelessWidget{

 String buttonName;
 Color? color=Colors.blue;
 VoidCallback? callback;

 customWidgetButton({required this.buttonName,
 this.color=Colors.amber,
 this.callback});


  @override
  Widget build(BuildContext context)
  {
    return ElevatedButton(
        style:ElevatedButton.styleFrom(
          backgroundColor: color
      ),
      onPressed:(){
        callback!();
      }, 
      child: Text(buttonName)
    );
    
  }
}