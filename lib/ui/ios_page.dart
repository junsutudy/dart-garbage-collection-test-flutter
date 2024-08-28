import 'package:flutter/material.dart';

class IosPage extends StatelessWidget {
  const IosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "images/ios_background.png",
      width: double.infinity,
      height: double.infinity,
      fit: BoxFit.fitHeight,
    );
  }
}
