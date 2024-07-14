import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
//reference the box
  final _myBox = Hive.box('myBox');

//write data
  void writeData() {
    _myBox.put(2, 'Dark');
  }

//read data
  void readData() {
    print(_myBox.get(2));
  }

//delete data
  void deleteData() {
    _myBox.delete(2);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              onPressed: writeData,
              child: Text('Write'),
              color: Colors.blueGrey,
            ),
            MaterialButton(
              onPressed: readData,
              child: Text('Read'),
              color: Colors.green,
            ),
            MaterialButton(
              onPressed: deleteData,
              child: Text('Delete'),
              color: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}
