import 'package:flutter/cupertino.dart';

class IosPage extends StatelessWidget {
  const IosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        leading: CupertinoNavigationBarBackButton(),
      ),
      child: Image.asset(
        "assets/images/ios_background.png",
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.fitHeight,
      ),
    );
  }
}
