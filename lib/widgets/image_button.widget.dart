import 'package:flutter/material.dart';

class ImageButton extends StatelessWidget {
  final String pathImage;

  const ImageButton({super.key, required this.pathImage});

  @override
  Widget build(BuildContext context) {
    return IconButton.outlined(
      onPressed: () {},
      padding: const EdgeInsets.all(15),
      icon: Image.asset(pathImage, width: 24, height: 24),
    );
  }
}
