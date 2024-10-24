import "package:flutter/material.dart";
import "package:first_app/gradient_container.dart";

void main() {
  // const Color colGradient1 = Color.fromARGB(255, 143, 58, 183);
  // const Color colGradient2 = Color.fromARGB(255, 63, 24, 131);

  runApp(
    const MaterialApp(
      home: Scaffold(
        // body: GradientContainer(colGradient1, colGradient2),
        body: GradientContainer.purple(),
      ),
    ),
  );
}

