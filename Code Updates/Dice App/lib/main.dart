import 'package:flutter/material.dart';

import 'package:test_app/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(    //MaterialApp's build() method is executed
      //MaterialApp provides us to use other widgets from its library
      home: Scaffold(     //Scaffold's build() method is executed
        //home defines which kind of widget/ui should be displayed inside the app i.e., scaffold here
        body: GradientContainer.color(),  //GradientContainer's build() method is executed
      ),
    ),
  );
}
