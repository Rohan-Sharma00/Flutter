import 'package:flutter/material.dart';
import "package:flutter_testapp/customWidget/customWidgetButton.dart";

class mainFile extends StatelessWidget
{
  
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      body: Column(
        children: [
            customWidgetButton(buttonName:"button 1"),
            customWidgetButton(buttonName:"button 2",color: Colors.red,),
            customWidgetButton(buttonName:"button 3",color: Colors.green,callback:(){print("button clicked");}),
        ]
      )
    );
  }
}
