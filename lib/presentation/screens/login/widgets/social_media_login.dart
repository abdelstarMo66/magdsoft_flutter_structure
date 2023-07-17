import 'package:flutter/material.dart';
import 'package:magdsoft_flutter_structure/presentation/widget/social_icon.dart';

import '../../../../constants/assets_manager.dart';
import '../../../styles/colors.dart';

class SocialMediaLogin extends StatelessWidget {
  const SocialMediaLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 1.0,
                  color: ColorManager.lightBlue,
                ),
              ),
              Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 10.0),
                child: Text(
                  "OR",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 15.0,
                      color:
                      ColorManager.lightBlue.withOpacity(0.61)),
                ),
              ),
              Expanded(
                child: Container(
                  height: 1.0,
                  color: ColorManager.lightBlue,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 50.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              SocialIcon(image: AssetsManager.facebook),
              SizedBox(width: 28.0,),
              SocialIcon(image: AssetsManager.apple),
              SizedBox(width: 28.0,),
              SocialIcon(image: AssetsManager.google),
            ],
          ),
          const SizedBox(
            height: 80.0,
          ),
        ],
      ),
    );
  }
}
