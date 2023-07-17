import 'package:flutter/material.dart';
import 'package:main_app/dice_roller.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.colors, {super.key});
  final List<Color> colors;
  void rolldice() {}
  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: colors,
              begin: Alignment.topLeft,
              end: Alignment.bottomLeft)),
      child: const Center(
          child: DiceRoller()),
    );
  }
}
