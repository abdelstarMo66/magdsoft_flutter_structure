import 'package:flutter/material.dart';

class BackGround extends StatelessWidget {
  const BackGround({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 430,
      // height: 380,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(2.50, -1.50),
          end: Alignment(0.5, 1),
          colors: [Color(0xD80062BD), Color(0x000062BD)],
        ),
      ),
    );
  }
}
