import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/my_button.dart';

class DialogBox extends StatelessWidget {

    DialogBox({super.key, required this.controller, required this.onSave, required this.onCancelProperty});

  final TextEditingController controller;
  VoidCallback onSave;
  VoidCallback onCancelProperty;

  @override
  Widget build(BuildContext context) {

    return AlertDialog(
      backgroundColor: Colors.yellow[200],
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

            TextField(
              controller: controller,
              decoration: InputDecoration(border: OutlineInputBorder(), hintText: 'add the new task'),
             ),
             const SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
              //buttons for the allowing of the widget
              MyButton(text: 'save', onPressed: onSave), 
              MyButton(text: 'cancel', onPressed: onCancelProperty),
              ],
            ),
          ],
        ),
      ),
    );
  }
}