import 'package:flutter/material.dart';

class SocialButton extends StatelessWidget {
  final String pathImage;
  final String text;

  const SocialButton({super.key, required this.pathImage, required this.text});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {},
      style: OutlinedButton.styleFrom(
        minimumSize: const Size(double.infinity, 52),
      ),
      child: Row(
        children: [
          Image.asset(pathImage, width: 24, height: 24),

          Expanded(
            child: Text(
              text,
              textAlign: .center,
              style: TextStyle(fontSize: 16),
            ),
          ),
          const SizedBox(width: 24),
        ],
      ),
    );
  }
}
