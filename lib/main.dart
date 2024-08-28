import 'package:dartgc/ui/android_page.dart';
import 'package:dartgc/ui/home_page.dart';
import 'package:dartgc/ui/ios_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp.router(
      routerConfig: _router,
    );
  }
}

final _router = GoRouter(
  routes: [
    GoRoute(
      path: "/",
      builder: (context, state) {
        return const HomePage();
      },
    ),
    GoRoute(
      path: "/android",
      builder: (context, state) {
        return const AndroidPage();
      },
    ),
    GoRoute(
      path: "/ios",
      builder: (context, state) {
        return const IosPage();
      },
    ),
  ],
);
