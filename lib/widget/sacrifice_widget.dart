import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SacrificeWidget extends StatefulWidget {
  final VoidCallback onOpenAndroidPage;
  final VoidCallback onOpenIosPage;

  const SacrificeWidget({
    super.key,
    required this.onOpenAndroidPage,
    required this.onOpenIosPage,
  });

  @override
  State<SacrificeWidget> createState() => _SacrificeWidgetState();
}

class _SacrificeWidgetState extends State<SacrificeWidget> {
  var showText = false;
  final timer = Stream.periodic(
    const Duration(milliseconds: 200),
    (int count) => count,
  );

  @override
  Widget build(BuildContext context) {
    Widget content = OutlinedButton(
      child: Text("CLICK"),
      onPressed: () {
        context.push("/android");
      },
    );
    for (var i = 10; i-- > 0;) {
      content = Padding(padding: EdgeInsets.all(0), child: content);
    }
    return content;
  }

  /*@override
  Widget build(BuildContext context) {
    final widgets = [
      _buildButtonWithContext(context),
      _buildSpacer(),
      _buildButtonWithoutContext(widget.onOpenIosPage),
      _buildSpacer(),
      ..._buildNavigatorsWithContext(context),
      _buildSpacer(),
      ..._buildNavigatorsWithoutContext(
        onOpenAndroidPage: widget.onOpenAndroidPage,
        onOpenIosPage: widget.onOpenIosPage,
      ),
      _buildSpacer(),
      OutlinedButton(
        onPressed: () => setState(() => showText = !showText),
        child: const Text("추가 정보 보기"),
      ),
      Visibility(
        visible: showText,
        child: const Text("사실 추가 정보는 없습니다."),
      )
    ];

    return Column(
      children: [
        ...widgets,
      ],
    );
  }*/

  Widget _buildButtonWithContext(BuildContext context) {
    return StreamBuilder(
      stream: timer,
      builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
        return OutlinedButton(
          onPressed: () => context.push("/android"),
          child: Text("Android 페이지 열기 ${snapshot.data}"),
        );
      },
    );
  }

  Widget _buildButtonWithoutContext(VoidCallback onOpenIosPage) =>
      OutlinedButton(
        onPressed: onOpenIosPage,
        child: const Text("iOS 페이지 열기"),
      );

  List<Widget> _buildNavigatorsWithContext(BuildContext context) => [
        ElevatedButton(
          onPressed: () => context.push("/android"),
          child: const Text("Android 페이지 열기"),
        ),
        ElevatedButton(
          onPressed: () => context.push("/ios"),
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
