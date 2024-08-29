import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MemoryTest extends StatelessWidget {
  MemoryTest({super.key});

  @override
  Widget build(BuildContext context) {
    final _ = List.generate(
      100000,
      (index) => Container(
        color: Theme.of(context).canvasColor,
      ),
    );

    final timer = Stream.periodic(
      const Duration(milliseconds: 500),
      (int count) => count,
    );

    return CupertinoPageScaffold(
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: _buildOutlinedButtonWithContext(context),
            ),
            /*Expanded(
              child: () {
                void onPressed() => Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (_) {
                          return MemoryTest();
                        },
                      ),
                    );
                return StreamBuilder(
                  stream: timer,
                  builder: (builderContext, snapshot) {
                    print(
                        "LOGGINGLOGGING stream${builderContext.hashCode}@widget$hashCode: ${snapshot.data}");
                    return OutlinedButton(
                      onPressed: onPressed,
                      child: Text(
                        "CLICK",
                        style: TextStyle(
                          color: Theme.of(context).canvasColor,
                        ),
                      ),
                    );
                  },
                );
              }(),
            ),*/
          ],
        ),
      ),
    );
  }

  Widget _buildOutlinedButtonWithContext(BuildContext context) {
    final timer = Stream.periodic(
      const Duration(milliseconds: 500),
      (int count) => count,
    );
    void onPressed() => Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (_) {
              return MemoryTest();
            },
          ),
        );
    return StreamBuilder(
      stream: timer,
      builder: (builderContext, snapshot) {
        print(
            "LOGGINGLOGGING stream${builderContext.hashCode}@widget$hashCode: ${snapshot.data}");
        return OutlinedButton(
          onPressed: onPressed,
          child: Text(
            "CLICK",
            style: TextStyle(
              color: Theme.of(context).canvasColor,
            ),
          ),
        );
      },
    );
  }
}
