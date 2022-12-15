import 'package:flutter/material.dart';

class TextControl extends StatelessWidget {
  // const TextControl({super.key});
  late final Function onClickHandler;

  TextControl({required Function onPressedHandler}) {
    onClickHandler = onPressedHandler;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        onPressed: () => onClickHandler('Text Changed!! Voila!'),
        child: Text('Change Text'),
      ),
    );
  }
}
