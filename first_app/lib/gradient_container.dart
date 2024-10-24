import "package:flutter/material.dart";
import "package:first_app/dice_roller.dart";

const alignmentTop = Alignment.topLeft;
const alignmentBottom = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.colGrad1, this.colGrad2, {super.key});

  const GradientContainer.purple({super.key})
      : colGrad1 = Colors.deepPurple,
        colGrad2 = const Color.fromARGB(255, 33, 41, 89);

  final Color colGrad1;
  final Color colGrad2;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: alignmentTop,
            end: alignmentBottom,
            colors: [this.colGrad1, colGrad2]),
      ),
      child: Center(
        // child: StyledText("Hello World CU!"),
        child: DiceRoller(),
      ),
    );
  }
}
