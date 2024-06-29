import 'package:flutter/material.dart';

import 'package:test_app/dice_roller.dart';

//use const(constant) instead of final
const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.topRight;

class GradientContainer extends StatelessWidget {
  //constructor -
  const GradientContainer(this.color1, this.color2, {super.key});

  const GradientContainer.color({super.key}) //2nd Constructor for color
      : color1 = const Color.fromARGB(255, 95, 10, 222),
        color2 = const Color.fromARGB(96, 239, 1, 231);

  final Color color1;
  final Color color2;

  @override
  Widget build(context) {
    return Container(
      /*body is accepted by scaffold as an argument and body accepts the widget i.e., to be shown inside the scaffold
          Container class is a widget that can contain a child widget,etc...*/
      decoration: BoxDecoration(
        //decoration adds effects to a widget
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
