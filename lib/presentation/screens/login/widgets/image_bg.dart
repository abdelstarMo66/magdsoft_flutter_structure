import 'package:flutter/material.dart';

import '../../../../constants/assets_manager.dart';

class ImageBG extends StatelessWidget {
  const ImageBG({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      child: Opacity(
        opacity: 0.5,
        child: Image.asset(AssetsManager.loginPhoto),
      ),
    );
  }
}
