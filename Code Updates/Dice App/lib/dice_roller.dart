import 'package:flutter/material.dart';

import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}
//Create another class with the class name use "_" and "State" at the end.

class _DiceRollerState extends State<DiceRoller> {

  var currentDiceRoll = 1;

  void rollDice() {
    setState(
      () {
        currentDiceRoll = randomizer.nextInt(6) + 1;
      },
    );
  }

//The build method is overridden in the _DiceRollerState class.
// This method describes the part of the user interface represented by the widget.
// It returns a Column widget that contains an Image widget and an ElevatedButton widget.

  @override
  Widget build(context) {
    return Column(
      mainAxisSize:
          MainAxisSize.min, //To stop column from taking all vertical space
      children: [
        Image.asset(
          'assets/images/dice-$currentDiceRoll.png',
          width: 150,
        ),
        const SizedBox(height: 20), //adds a box of heigt 20 before the button
        ElevatedButton(
            onPressed: rollDice, //Button TExt
            style: TextButton.styleFrom(
              padding: const EdgeInsets.fromLTRB(
                  15, 15, 15, 15), //adjust button size
              foregroundColor: const Color.fromARGB(255, 61, 80, 60),
              textStyle: const TextStyle(
                fontSize: 20,
              ),
            ),
            child: const Text("Roll Dice"))
      ],
    );
  }
}
