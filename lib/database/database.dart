import 'package:hive_flutter/hive_flutter.dart';

class ToDoDatabase{

  List toDoList = []; 
  final _myBox = Hive.box('mybox'); 

  void createInitialData(){
    toDoList = [
      ["Make Tutorials", false],
      ["Do exercise", false],
      ["This is james", false]
    ]; 
  }

  void loadData(){
    toDoList = _myBox.get('TODOLIST');
  }

  void updateDatabase(){
    _myBox.put('TODOLIST', toDoList);
  }
}