import 'package:flutter/material.dart';

class UiCircularLoading extends StatelessWidget {
  final bool? disabled;
  final Color? color;
  const UiCircularLoading({super.key, this.disabled = false, this.color});

  @override
  Widget build(BuildContext context) {
    return disabled == false
        ? Container()
        : Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircularProgressIndicator(
              color: color,
            ),
          );
  }
}
