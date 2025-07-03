import 'package:flutter/material.dart';
import 'package:flutter_application_1/home.dart';

void main(){

  runApp( MaterialApp(
    home: Home(),
  ));  
}

class Sandbox extends StatelessWidget {
  const Sandbox({super.key});

@override
Widget build(BuildContext context){
  return Scaffold(
    appBar: AppBar(
      title: Text("this is the heading"), 
      backgroundColor: Colors.brown[700],

    ),
    body: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,

      children: [
        Container(
          height: 100,
          color: Colors.red, 
          child: Text("first"),
        ), 
        Container(
          height: 200,
          color: Colors.yellow,
          child: Text("second"),
        ), 
        Container(
          height: 300,
          color: Colors.blue,
          child: Text("third"),
        ),
      ],
    ),
  );
}
}
