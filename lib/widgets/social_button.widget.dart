import 'package:flutter/material.dart';

class SocialButton extends StatelessWidget {
  final String pathImage;
  final String text;

  const SocialButton({super.key, required this.pathImage, required this.text});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: 55,
        decoration: BoxDecoration(
          border: Border.all(),
          borderRadius: BorderRadius.circular(55),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(left: 20, child: Image.asset(pathImage, width: 20)),
            Text(text),
          ],
        ),
      ),
    );
  }
}
