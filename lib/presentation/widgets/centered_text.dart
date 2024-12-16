import 'package:flutter/material.dart';

class CenteredText extends StatelessWidget {
  final String text;
  const CenteredText(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(text),
    );
  }
}
