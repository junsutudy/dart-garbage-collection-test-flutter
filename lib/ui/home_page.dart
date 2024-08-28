import 'package:dartgc/widget/sacrifice_widget.dart';
import 'package:flutter/cupertino.dart';
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
  SacrificeWidget? _content;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _content ?? const CircularProgressIndicator(),
              const SizedBox(height: 20.0),
              FilledButton(
                onPressed: _content == null
                    ? null
                    : () => _refreshUi(),
                child: const Text("초기화"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _refreshUi() {
    setState(() {
      _content = null;
    });
    Future.delayed(
      const Duration(milliseconds: 300),
      () {
        setState(() {
          _content = _buildSacrificeWidget();
        });
      },
    );
  }

  SacrificeWidget _buildSacrificeWidget() => SacrificeWidget(
        onOpenAndroidPage: () => context.go("/android"),
        onOpenIosPage: () => context.go("/ios"),
      );
}
