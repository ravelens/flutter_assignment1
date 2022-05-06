//text.dart

import 'package:flutter/material.dart';

class TextValue extends StatelessWidget {
  final String text;
  const TextValue({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(text),
    );
  }
}
