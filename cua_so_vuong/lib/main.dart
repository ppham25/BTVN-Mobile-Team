import 'package:flutter/material.dart';

import 'build_container.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(),
          body: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    BuildContainer(
                      color: Colors.red,
                      text: "1",
                    ),
                    BuildContainer(
                      color: Colors.green,
                      text: "3",
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    BuildContainer(
                      color: Colors.lightBlueAccent,
                      text: "2",
                    ),
                    BuildContainer(
                      color: Colors.indigo,
                      text: "4",
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

