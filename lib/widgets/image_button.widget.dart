import 'package:flutter/material.dart';

class ImageButton extends StatelessWidget {
  final String pathImage;

  const ImageButton({super.key, required this.pathImage});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      borderRadius: BorderRadius.circular(50),
      child: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          border: Border.all(),
          borderRadius: BorderRadius.circular(50),
        ),
        child: Padding(
          padding: const EdgeInsets.all(13.0),
          child: Image.asset(pathImage, width: 20),
        ),
      ),
    );
  }
}
