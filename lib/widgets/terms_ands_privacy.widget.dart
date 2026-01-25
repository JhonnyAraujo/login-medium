import 'package:flutter/material.dart';

class TermsAndsPrivacy extends StatelessWidget {
  const TermsAndsPrivacy({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text.rich(
      TextSpan(
        style: TextStyle(fontSize: 12, color: Colors.grey),
        text: "By singning up, you agree to our ",
        children: [
          TextSpan(
            text: "Terms of Service",
            style: TextStyle(
              shadows: [Shadow(color: Colors.green, offset: Offset(0, -2))],
              color: Colors.transparent,
              decoration: TextDecoration.underline,
              decorationColor: Colors.green,
              decorationThickness: 2,
            ),
          ),
          TextSpan(text: " and acknowledge that our "),
          TextSpan(
            text: "Privacy Policy",
            style: TextStyle(
              shadows: [Shadow(color: Colors.green, offset: Offset(0, -2))],
              color: Colors.transparent,
              decoration: TextDecoration.underline,
              decorationColor: Colors.green,
              decorationThickness: 2,
            ),
          ),
          TextSpan(text: " applies to you."),
        ],
      ),
    );
  }
}
