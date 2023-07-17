import 'package:flutter/material.dart';

class SocialIcon extends StatelessWidget {
  final String image;
  const SocialIcon({Key? key,required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 52,
      height: 52,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        ),
        shadows: const [
          BoxShadow(
            color: Color(0x3F000000),
            blurRadius: 20,
            offset: Offset(2, 5),
            spreadRadius: 5,
          )
        ],
      ),
      padding: const EdgeInsets.all(10.0),
      child: Image.asset(image, height: 42.0,),
    );
  }
}
