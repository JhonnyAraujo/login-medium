import 'package:flutter/material.dart';

class SocialButton extends StatelessWidget {
  final String pathImage;
  final String text;

  const SocialButton({super.key, required this.pathImage, required this.text});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {},

      child: Stack(
        alignment: .center,
        children: [
          Align(
            alignment: .centerLeft,
            child: Image.asset(pathImage, width: 17),
          ),
          Text(text, style: TextStyle(fontSize: 15)),
        ],
      ),
    );
  }
}
