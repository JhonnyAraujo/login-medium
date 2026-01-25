import 'package:flutter/material.dart';

class SocialButton extends StatelessWidget {
  final String pathImage;
  final String? text;

  const SocialButton({super.key, required this.pathImage, this.text});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      borderRadius: BorderRadius.circular(50),
      child: Container(
        height: 50,
        width: text == null ? 50 : double.infinity,
        decoration: BoxDecoration(
          border: Border.all(),
          borderRadius: BorderRadius.circular(50),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              left: text == null ? null : 20,
              child: Image.asset(pathImage, width: 17),
            ),
            if (text != null) Text(text!, style: TextStyle(fontSize: 15)),
          ],
        ),
      ),
    );
  }
}
