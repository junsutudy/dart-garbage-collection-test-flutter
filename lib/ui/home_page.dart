import 'package:dartgc/widget/sacrifice_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  SacrificeWidget content = const SacrificeWidget();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          content,
        ],
      ),
    );
  }

  void _refreshUi() {
    content = const SacrificeWidget();
  }
}
