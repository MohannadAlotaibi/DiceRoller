import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var current = 2;
  void rollDice() {
    setState(() {
      current = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$current.png',
          width: 200,
        ),
        TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
                padding: EdgeInsets.all(20),
                foregroundColor: Color.fromARGB(255, 0, 0, 0),
                textStyle: const TextStyle(fontSize: 28)),
            child: const Text('Roll dice')),
      ],
    );
  }
}
