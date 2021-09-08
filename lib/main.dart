import 'package:flutter/material.dart';

import 'components/mainInfo.dart';
import 'components/sideMenu.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Row(
          children: [
            Expanded(flex: 1, child: SideMenu()),
            Expanded(flex: 5, child: MainInfo())
          ],
        ),
      ),
    );
  }
}
