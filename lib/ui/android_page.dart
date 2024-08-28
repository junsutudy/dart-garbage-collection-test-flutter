import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

class AndroidPage extends StatelessWidget {
  const AndroidPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        leading: CupertinoNavigationBarBackButton(),
      ),
      child: Image.asset(
        "assets/images/android_background.png",
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.fitHeight,
      ),
    );
  }
}
