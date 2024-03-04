import 'package:flutter/material.dart';

class SetText extends StatelessWidget {
  String? text;
  SetText({super.key, this.text});

  @override
  Widget build(BuildContext context) {
    return Text(text!);
  }
}
