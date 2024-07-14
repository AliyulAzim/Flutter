import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:topic_hive/home_page.dart';

void main() async {
  //initialize hive
  // 1- Hive.initFlutter(); then await it, add async after main()
  await Hive.initFlutter();

  //open the box, Box is like a representation of the database
  var box = await Hive.openBox('myBox');
  // a database will be created named myBox & if you want to store in difft databases just change the name 

  // 2- Hive.init('my_db'); then await it, add async after main()

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}
