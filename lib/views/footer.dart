import 'package:flutter/material.dart';

class FooterApp extends StatelessWidget {
  const FooterApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Align(
      alignment: Alignment.bottomCenter,
      child: Text(
        'y|<app',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Color.fromARGB(137, 138, 84, 3),
          fontSize: 30,
          fontWeight: FontWeight.bold,
          fontFamily: 'Helvetica Neue',
        ),
      ),
    );
  }
}
