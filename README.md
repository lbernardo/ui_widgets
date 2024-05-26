<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

A collection of widgets for UI

## Features

- TextField
- Button
- CircularLoadingProgress
- HorizontalDivider

## Getting started

Install the package, and that's it.

## Usage


```dart
import 'package:flutter/material.dart';
import 'package:ui_widgets/widgets/ui_button.dart';
import 'package:ui_widgets/widgets/ui_text_field.dart';


class Home extends StatelessWidget {
  Home({super.key});

  Widget _size = SizedBox(
    height: 20,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              UiTextField(hintText: 'tap your name'),
              _size,
              UIButton(
                text: "Button",
                onPress: () {},
              ),
              _size,
              UIButton(
                text: "Button With icon",
                icon: Icons.camera,
                onPress: () {},
              ),
              _size,
            ],
          ),
        )),
      ),
    );
  }
}

```

