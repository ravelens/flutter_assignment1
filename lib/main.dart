//main.dart
import 'package:flutter/material.dart';
import 'package:flutter_assignment/text.dart';
import 'package:flutter_assignment/text_control.dart';

// 1) Create a new Flutter App (in this project) and output an AppBar and some text
// below it
// 2) Add a button which changes the text (to any other text of your choice)
// 3) Split the app into three widgets: App, TextControl & Text
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _defaultText = 'Dummy Text Here';
  var _cnt = 1;
  void _changeText() {
    setState(() {
      _defaultText = "Text Changed - Hit : " + _cnt.toString();
    });
    print("Triggered");
    _cnt += 1;
  }

  void _resetApp() {
    setState(() {
      _defaultText = "Dummy Text Here";
      _cnt = 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('First Assignment'),
          backgroundColor: Colors.indigo,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextValue(
              text: _defaultText,
            ),
            TextControl(
              changeText: _changeText,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.indigo,
                padding: EdgeInsets.all(10),
              ),
              onPressed: _resetApp,
              child: Text(
                'Reset Counter',
              ),
            )
          ],
        ),
      ),
    );
  }
}
