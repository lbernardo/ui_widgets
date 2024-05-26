import 'package:flutter/material.dart';

class UiTextField extends StatelessWidget {
  String hintText;
  TextInputType keyboard;
  bool password;
  void Function(String)? onChanged;

  UiTextField(
      {super.key,
      required this.hintText,
      this.keyboard = TextInputType.none,
      this.password = false,
      this.onChanged});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        keyboardType: keyboard,
        obscureText: password,
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: hintText,
          filled: true,
          fillColor: Colors.grey[200],
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10.0),
            ),
            borderSide: BorderSide.none,
          ),
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10.0),
            ),
            borderSide: BorderSide.none,
          ),
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10.0),
            ),
          ),
        ));
  }
}
