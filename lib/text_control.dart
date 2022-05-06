//text_control.dart
import 'package:flutter/material.dart';

class TextControl extends StatelessWidget {
  final VoidCallback changeText;
  const TextControl({Key? key, required this.changeText }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.indigo,
          padding: EdgeInsets.all(10),
        ),
        onPressed: changeText,
        child: Text('Trigger'),
      ),
    );
  }
}
