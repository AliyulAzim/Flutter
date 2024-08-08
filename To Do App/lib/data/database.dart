import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  List toDoList = [];

  //reference the box
  final _myBox = Hive.box('mybox');

//run this method if it the 1st time opening this app
  void createInitialData() {
    toDoList = [
      ["Use the '+' icon to add new tasks", false],
      ["Slide a task to the left to delete it", false],
    ];
  }

// load the data from the database
  void loadData() {
 toDoList = _myBox.get('TODOLIST');
  }

  //update the database
  void updateData() {
 _myBox.put('TODOLIST', toDoList);
  }
}
