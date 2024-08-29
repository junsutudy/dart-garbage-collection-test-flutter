import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MemoryTest extends StatelessWidget {
  MemoryTest({super.key});

  final _ = List.generate(
    1000000,
    (index) => const EdgeInsets.all(0),
  );

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // _buildOutlinedButtonWithContext(context),
            Expanded(
              child: OutlinedButton(
                child: Text("CLICK"),
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (_) {
                        return MemoryTest();
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildOutlinedButtonWithContext(BuildContext context) {
    return OutlinedButton(
      child: Text("CLICK"),
      onPressed: () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (_) {
              final _ = List.generate(
                10000000,
                (index) => const EdgeInsets.all(0),
              );
              return MemoryTest();
            },
          ),
        );
      },
    );
  }
}
