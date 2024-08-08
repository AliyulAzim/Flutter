import 'package:flutter/material.dart';
import 'package:todo_app/dialog_box.dart';

class UserButtons extends StatelessWidget {

    final String text;
    VoidCallback onPressed;
   UserButtons({
  required this.text,
  required this.onPressed,
  super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      child: Text(text),
      color: Colors.amber,
    );
  }
}
