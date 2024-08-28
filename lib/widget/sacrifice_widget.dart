import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SacrificeWidget extends StatelessWidget {
  final VoidCallback onOpenAndroidPage;
  final VoidCallback onOpenIosPage;

  const SacrificeWidget({
    super.key,
    required this.onOpenAndroidPage,
    required this.onOpenIosPage,
  });

  @override
  Widget build(BuildContext context) {
    final widgets = [
      _buildButtonWithContext(context),
      _buildSpacer(),
      _buildButtonWithoutContext(onOpenIosPage),
      _buildSpacer(),
      ..._buildNavigatorsWithContext(context),
      _buildSpacer(),
      ..._buildNavigatorsWithoutContext(
        onOpenAndroidPage: onOpenAndroidPage,
        onOpenIosPage: onOpenIosPage,
      ),
    ];

    return Column(
      children: widgets,
    );
  }

  Widget _buildButtonWithContext(BuildContext context) => OutlinedButton(
        onPressed: () => context.go("/android"),
        child: const Text("Android 페이지 열기"),
      );

  Widget _buildButtonWithoutContext(VoidCallback onOpenIosPage) =>
      OutlinedButton(
        onPressed: onOpenIosPage,
        child: const Text("iOS 페이지 열기"),
      );

  List<Widget> _buildNavigatorsWithContext(BuildContext context) => [
        ElevatedButton(
          onPressed: () => context.go("/android"),
          child: const Text("Android 페이지 열기"),
        ),
        ElevatedButton(
          onPressed: () => context.go("/ios"),
          child: const Text("iOS 페이지 열기"),
        ),
      ];

  List<Widget> _buildNavigatorsWithoutContext({
    required VoidCallback onOpenAndroidPage,
    required VoidCallback onOpenIosPage,
  }) =>
      [
        TextButton(
          onPressed: onOpenAndroidPage,
          child: const Text("Android 페이지 열기"),
        ),
        TextButton(
          onPressed: onOpenIosPage,
          child: const Text("iOS 페이지 열기"),
        ),
      ];

  Widget _buildSpacer() => const SizedBox(height: 10.0);
}
