import 'package:flutter/material.dart';

import 'components/mainInfo.dart';
import 'components/sideMenu.dart';
//import 'components/altMenu.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          color: Colors.grey.shade300,
          child: Row(
            children: [
              Expanded(flex: 1, child: SideMenu()),
              Expanded(flex: 5, child: MainInfo())
            ],
          ),
        ),
      ),
    );
  }
}
