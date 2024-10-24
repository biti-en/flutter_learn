import 'package:flutter/material.dart';
import 'dart:math';

final Random _diceRandomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceAssets = "assets/images/dice-2.png";
  int currentDiceCtr = 0;
  List diceList = ["dice-1.png", "dice-2.png", "dice-3.png", "dice-4.png", "dice-5.png", "dice-6.png"];

  void rollDice() {
    // if (currentDiceCtr == 6){
    //   currentDiceCtr = 0;
    // }
    currentDiceCtr = _diceRandomizer.nextInt(6);

    String currentDice = diceList[currentDiceCtr];
    setState(() {
      currentDiceAssets = "assets/images/$currentDice";
    });
    print("current dice value: $currentDice, $currentDiceAssets");
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          currentDiceAssets,
          width: 200,
        ),
        const SizedBox(height: 20),
        TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
                // padding: EdgeInsets.only(top: 20),
                foregroundColor: Colors.white,
                textStyle: const TextStyle(fontSize: 20)),
            child: const Text("Roll Dice"))
      ],
    );
  }
}
