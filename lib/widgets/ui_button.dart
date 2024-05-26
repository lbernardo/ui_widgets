import 'package:flutter/material.dart';

class UIButton extends StatelessWidget {
  String text;
  Color? bgColor;
  IconData? icon;
  double? width;
  double? height;
  void Function()? onPress;

  UIButton(
      {super.key,
      required this.text,
      this.onPress,
      this.bgColor = Colors.blueAccent,
      this.width,
      this.height,
      this.icon});

  Widget _textWidget() {
    return Text(
      text,
      style: const TextStyle(color: Colors.white),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: bgColor,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      onPressed: onPress,
      child: SizedBox(
        width: width,
        height: height,
        child: icon == null
            ? _textWidget()
            : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(icon, color: Colors.white),
                  const SizedBox(
                    width: 5,
                  ),
                  _textWidget(),
                ],
              ),
      ),
    );
  }
}
