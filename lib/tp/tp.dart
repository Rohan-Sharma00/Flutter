import 'package:flutter/material.dart';

class tp extends StatelessWidget {
  var names = [
  'Alice',
  'Bob',
  'Carol',
  'David',
  'Emily',
  'Frank',
  'Grace',
  'Henry',
  'Isabel',
  'Jack'
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(0),
      child:ListView.separated(
        itemBuilder: (context,index)
        {
          int reverse=names.length-index-1;
          return(Text(names[reverse],style: TextStyle( fontSize: 25)));
        },
        itemCount: names.length,
        // scrollDirection: Axis.horizontal,

        separatorBuilder: (context,index){
          return(Divider(height: 50,thickness: 20));
        },
       
        )
    ));
  }
}
