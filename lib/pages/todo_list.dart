import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class ToDoList extends StatefulWidget {

  ToDoList({super.key, required this.message, required this.value, required this.onChanged, required this.deleteFunction});
  final String message;
  final bool value;
  final Function(bool?)? onChanged;
  Function(BuildContext) deleteFunction; 

  @override
  State<ToDoList> createState() => _ToDoListState();
}

class _ToDoListState extends State<ToDoList> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 25, bottom: 0, left: 25, right: 25),
      child: Slidable(
        endActionPane: ActionPane(
          motion: StretchMotion(), 
          children: [
            SlidableAction(onPressed: widget.deleteFunction,
            icon: Icons.delete,
            backgroundColor: Colors.red.shade300,
            borderRadius: BorderRadius.circular(12),
            ),
          ]), 
        child: Container(
          decoration: BoxDecoration(
            color: Colors.yellow,
            borderRadius: BorderRadius.circular(12),
          ),
         
          
          padding:  EdgeInsets.all(24),
          
          child: Row(
            children: [
              Checkbox(
                value: widget.value,
                onChanged: widget.onChanged,
                
                ),
              Text(widget.message, 
              style: TextStyle(
                decoration: widget.value ? TextDecoration.lineThrough : TextDecoration.none
              ),)
            ],
          ),
          
        ),
      ),
    ); 
  }
}