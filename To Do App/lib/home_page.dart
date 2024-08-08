import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:todo_app/data/database.dart';
import 'package:todo_app/dialog_box.dart';
import 'package:todo_app/todo_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
//reference to Hive Box
  final _myBox = Hive.box('myBox');
  ToDoDataBase obj = ToDoDataBase();

  @override
  void initState() {
    //if this is first time opening the app then create default data
    if (_myBox.get('TODOLIST') == null) {
      obj.createInitialData(); //THIS WILL EXECUTE THIS METHOD IN THE DATABASE.DART AND GIVE THE LIST OF DATA
    } else {
      // IF there already data exists
      obj.loadData();
    }
  }

//text controller
  final _controller =
      TextEditingController(); //Creates a controller for an editable text field, with no initial selection.
 

  //for checkbox tap
  void checkBoxChanged(bool? value, int index) {
    //value: A nullable boolean representing the new value of the checkbox (whether it’s checked or unchecked).
    //index: An integer representing the index of the task in the toDoList.
    setState(() {
      obj.toDoList[index][1] = !obj.toDoList[index][1];
    });
    obj.updateData();
  }

  // save new Task
  void saveNewTask() {
    setState(() {
      obj.toDoList.add([_controller.text, false]);
    });
    _controller.clear();
    Navigator.of(context).pop();
    obj.updateData();
  }

  //for createing New Tasks for Floating Add Button
  void createNewTasks() {
    showDialog(
      context: context,
      builder: (context) {
        return DialogBox(
          controller: _controller,
          onSave: saveNewTask,
          onCancel: () =>
              Navigator.of(context).pop(), // method will dismiss this dialog box
        );
      },
    );
  }

  //delete task
  void deleteTask(int index) {
    setState(() {
      obj.toDoList.removeAt(index);
    });
    obj.updateData();
  } 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 228, 233, 119),
        title: Text('TO DO'),
        elevation: 0,
      ),

      //Floating Add Button
      floatingActionButton: FloatingActionButton(
        onPressed: createNewTasks,
        child: Icon(Icons.add),
      ),

      //List View Builder
      body: ListView.builder(
        itemCount: obj.toDoList.length,
        itemBuilder: (context, index) {
          return ToDoTile(
            taskName: obj.toDoList[index][0],
            taskCompleted: obj.toDoList[index][1],
            onChanged: (value) => checkBoxChanged(value, index),
            deleteFunction: (context) => deleteTask(index),
            //deleteFunction: (context) => deleteTask,
          );
        },
      ),
    );
  }
}
