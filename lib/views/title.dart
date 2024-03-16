import 'package:flutter/material.dart';

class TitleApp extends StatelessWidget {
  const TitleApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'ShopList',
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.white54,
        fontSize: 50,
        fontWeight: FontWeight.w100,
        fontFamily: 'Helvetica Neue',
      ),
    );
  }
}
