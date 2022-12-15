// 1) Create a new Flutter App (in this project) and output an AppBar and some text
// below it
// 2) Add a button which changes the text (to any other text of your choice)
// 3) Split the app into three widgets: App, TextControl & Text

import 'package:flutter/material.dart';

import './display_text.dart';
import './text_control.dart';

void main() => runApp(App());

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AppState();
  }
}

class _AppState extends State<App> {
  var demoText = 'This is Demo Text';

  void textChanger(String text) {
    setState(() {
      demoText = text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('myApp2'),
        ),
        body: Container(
          child: Column(
            children: [
              DisplayText(demoText),
              TextControl(onPressedHandler: textChanger)
            ],
          ),
        ),
      ),
    );
  }
}
