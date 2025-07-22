import 'package:flutter/material.dart';
import 'package:flutter_application_1/textpage.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CounterIncrement(),
      routes: {
        '/textpage' : (context) {
          return Textpage(); 
        }
      },
    ),
  );
}

class CounterIncrement extends StatefulWidget {

  const CounterIncrement({super.key});

  @override
  State<CounterIncrement> createState() => _CounterIncrementState();
}

class _CounterIncrementState extends State<CounterIncrement> {
  int counter = 0; 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Center(child: Text('you have pressed this $counter times'),),
          ElevatedButton(
            onPressed: (){

              Navigator.pushNamed(context, '/textpage');
              
            },
            child: Text('Next Page'), 
            ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            counter = counter - 1 ;
          });
        }, 
        child: Text('+'),
        ),
    );
    
  }
}