import 'package:flutter/material.dart';
import 'package:login_medium/pages/login_medium.page.dart';

void main() {
  runApp(Medium());
}

class Medium extends StatelessWidget {
  const Medium({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginMediumPage(),
    );
  }
}
