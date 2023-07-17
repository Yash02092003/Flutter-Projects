import 'package:flutter/material.dart';
import 'dart:math';
var randomizer = Random();
class DiceRoller extends StatefulWidget{
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState()
  {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller>
{
  var currentdiceroll = randomizer.nextInt(6) + 1;
  void rolldice()
  {
    setState((){
      currentdiceroll = randomizer.nextInt(6) + 1;
    });
  }
  @override
  Widget build(context)
  {
    return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset("assessts/images/dice-$currentdiceroll.png", width: 300),
          const SizedBox(height: 100),
          OutlinedButton(
              onPressed: rolldice,
              style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.white,backgroundColor: Colors.lightBlue,
                  textStyle: const TextStyle(fontSize: 30)),
              child: const Text("ROLL"))
        ],
      );
  }
}


