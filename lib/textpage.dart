import 'package:flutter/material.dart';

class Textpage extends StatefulWidget {
  const Textpage({super.key});

  @override
  State<Textpage> createState() => _TextpageState();
}

class _TextpageState extends State<Textpage> {
  String visibleText = " ";

  TextEditingController controller = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(controller.text),
          TextField(
            controller: controller,
          
          ),
         ElevatedButton(onPressed: (){
         setState(() {
           visibleText = "hello" + " " + controller.text;
         });
         },
        child: Text('Click to see'))
        ],
      ),
    ); 
  }
}