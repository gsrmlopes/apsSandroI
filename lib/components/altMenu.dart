import 'package:flutter/material.dart';

class AltMenu extends StatelessWidget {
  const AltMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
      ),
    );
  }
}
