import 'package:flutter/material.dart';
import './text_output.dart';

class TextControl extends StatefulWidget {
  @override
  State<TextControl> createState() => _TextControlState();
}

class _TextControlState extends State<TextControl> {
  String _mainText = 'This is sample text fot assignment';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextOutput(_mainText),
        RaisedButton(
          child: const Text('Change Text'),
          onPressed: () {
            setState(() {
              _mainText = 'Changed Text is this';
            });
          },
        ),
      ],
    );
  }
}
