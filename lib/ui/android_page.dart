import 'package:flutter/material.dart';

class AndroidPage extends StatelessWidget {
  const AndroidPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "images/android_background",
      width: double.infinity,
      height: double.infinity,
      fit: BoxFit.fitHeight,
    );
  }
}
