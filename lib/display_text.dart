import 'package:flutter/material.dart';

class DisplayText extends StatelessWidget {
  // const DisplayText({super.key});
  final String text;

  const DisplayText(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(text),
    );
  }
}
