import 'package:dartgc/widget/sacrifice_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late SacrificeWidget content;

  @override
  void initState() {
    super.initState();
    content = _buildSacrificeWidget();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              content,
              FilledButton(
                onPressed: _refreshUi,
                child: const Text("초기화"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  SacrificeWidget _buildSacrificeWidget() => SacrificeWidget(
        onOpenAndroidPage: () => context.go("/android"),
        onOpenIosPage: () => context.go("/ios"),
      );

  void _refreshUi() {
    content = _buildSacrificeWidget();
  }
}
