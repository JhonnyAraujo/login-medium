import 'package:flutter/material.dart';

class DividerWithMiddleText extends StatelessWidget {
  final String text;

  const DividerWithMiddleText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 8,
      children: [
        Expanded(child: Divider(thickness: 2, color: Colors.black26)),
        Text(text, style: TextStyle(color: Colors.black45)),
        Expanded(child: Divider(thickness: 2, color: Colors.black26)),
      ],
    );
  }
}
