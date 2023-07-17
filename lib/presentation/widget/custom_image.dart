import 'package:flutter/material.dart';

class CustomImage extends StatelessWidget {
  final double size;
  final String image;
  const CustomImage({Key? key, required this.size, required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: size,
      child: Container(
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          shadows: const [
            BoxShadow(
              color: Color(0x3F000000),
              blurRadius: 4,
              offset: Offset(0, 0),
              spreadRadius: 2,
            )
          ],
        ),
        child: Image.network(image),
      ),
    );
  }
}
