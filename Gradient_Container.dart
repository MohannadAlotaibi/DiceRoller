import 'package:flutter/material.dart';
import 'Styled_Text.dart';
import 'Dice_roller.dart';

var startAli = Alignment.topLeft;
var endAli = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color, {super.key});
  final List<Color> color;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: color,
          begin: startAli,
          end: endAli,
        ),
      ),
      child: Center(child: DiceRoller()),
    );
  }
}
