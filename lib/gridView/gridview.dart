import 'package:flutter/material.dart';

class tp extends StatelessWidget {

  var colors = [
  Colors.blue,
  Colors.orange,
  Colors.green,
  Colors.purple,
  Colors.yellow,
  Colors.teal,
  Colors.pink,
  Colors.indigo,
  Colors.amber,
  Colors.cyan,
];

  @override
  Widget build(BuildContext context) {
    var email = TextEditingController();
    return Scaffold(
        appBar: AppBar(
          // backgroundColor: Colors.blue,
          title: Center(
            child: Text(
              "welcome to flutter",
              style: TextStyle(
                color: Colors.pink,
              ),
            ),
          ),
        ),
        body:GridView.builder(gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 100,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10
        ), 
        itemBuilder: (context,index){
          return Container(color:colors[index]);
        },
        itemCount: colors.length,
        )
        );
        
  }
}
