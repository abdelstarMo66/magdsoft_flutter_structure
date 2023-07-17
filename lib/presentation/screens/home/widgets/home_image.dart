import 'package:flutter/material.dart';

import '../../../../constants/assets_manager.dart';

class HomeImage extends StatelessWidget {
  const HomeImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomLeft,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Image.asset(AssetsManager.test4),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(
              horizontal: 28.0, vertical: 6.0),
          child: Text(
            'New Release\nAcer Predator Helios 300',
            style: TextStyle(
              color: Colors.white,
              fontSize: 11,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    );
  }
}
