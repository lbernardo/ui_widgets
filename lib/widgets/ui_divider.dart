import 'package:flutter/material.dart';

class UiDivider extends StatelessWidget {
  final String text;
  const UiDivider({super.key, required this.text});

  Widget get _line {
    return Expanded(
        child: Container(
      margin: const EdgeInsets.only(left: 15.0, right: 10.0),
      child: const Divider(
        color: Colors.grey,
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [_line, Text(text), _line],
    );
  }
}
