import "package:flutter/material.dart";

class StyledText extends StatelessWidget {
  StyledText(this.st_text, {super.key});

  final String st_text;
  
  @override
  Widget build(BuildContext context) {
    return Text(
      st_text,
      style: const TextStyle(color: Colors.white, fontSize: 27),
    );
  }
}
