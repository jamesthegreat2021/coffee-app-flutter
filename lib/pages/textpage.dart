import 'package:flutter/material.dart';
import 'package:flutter_application_1/database/database.dart';
import 'package:flutter_application_1/pages/todo_list.dart';
import 'package:flutter_application_1/utils/dialog_box.dart';
import 'package:hive_flutter/hive_flutter.dart';


class HomePage extends StatefulWidget {
  
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //refference the data box 
  final _myBox = Hive.box('mybox'); 
  ToDoDatabase db = ToDoDatabase(); 

  final TextEditingController _controller = TextEditingController();

 @override
 void initState(){
  //for the first  time with data
  if(_myBox.get('TODOLIST') == null) {
    db.createInitialData();
  } else {
    db.loadData(); 
  }
  super.initState();
 }


   onChanged(bool? value, int index){
    
    //the value has not been used or we can use it in this way
   setState(() {
     db.toDoList[index][1] = value; 
     db.updateDatabase();
     //another option
    // db.toDoList[index][1] = !db.toDoList[index][1];
   });
  }

  void newDialoguePopup(){
    showDialog(context: context, 
    builder: (context) {
      return DialogBox(
        controller: _controller,
        onCancelProperty: (){
          Navigator.of(context).pop();
        },
        onSave: onSave,
      );
    });
  }
  
  void onSave() {
    setState(() {
      db.toDoList.add([_controller.text,  false]);
      _controller.clear();
      db.updateDatabase();
    });
    
    Navigator.of(context).pop();
  }

  void deleteFunction(index){
   setState(() {
     db.toDoList.removeAt(index);
     db.updateDatabase();
   });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      appBar: AppBar(
        backgroundColor: Colors.yellow,
      ),
      body: ListView.builder(
       itemCount: db.toDoList.length,
       itemBuilder: (context, index) {
        return ToDoList(
          deleteFunction: (context) => deleteFunction(index),
          message: db.toDoList[index][0],
          value: db.toDoList[index][1],
          onChanged: (value) 
          { 
            onChanged(value, index);
            },
            
        );
       },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: newDialoguePopup, 
        backgroundColor: Theme.of(context).primaryColor,
        foregroundColor: Colors.black,
        child: Icon(Icons.add),
        ),
      
    );
  }
}