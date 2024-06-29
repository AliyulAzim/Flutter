import 'package:flutter/material.dart';

class StyleText extends StatelessWidget {
  const StyleText(this.text, {super.key});

  final String text;

  @override
  Widget build(context) {
    return Text(
      text, //main message
      style: const TextStyle(
        color: Color.fromARGB(255, 224, 244, 7),
        fontSize: 20,
      ),
    );
  }
}
