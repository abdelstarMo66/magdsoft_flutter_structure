import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FAB extends StatelessWidget {
  const FAB({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 56,
      height: 56,
      decoration: const ShapeDecoration(
        gradient: LinearGradient(
          begin: Alignment(-0.77, -0.64),
          end: Alignment(0.77, 0.64),
          colors: [
            Color(0xFF0062BD),
            Color(0xB60062BD),
            Color(0x000062BD),
          ],
        ),
        shape: OvalBorder(),
        shadows: [
          BoxShadow(
            color: Color(0x3F000000),
            blurRadius: 4,
            offset: Offset(1, 1),
            spreadRadius: 2,
          )
        ],
      ),
      child: const Icon(
        FontAwesomeIcons.house,
        color: Colors.white,
      ),
    );
  }
}
