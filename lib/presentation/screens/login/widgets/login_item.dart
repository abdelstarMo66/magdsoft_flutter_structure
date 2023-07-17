import 'package:flutter/material.dart';
import 'package:magdsoft_flutter_structure/presentation/screens/login/widgets/social_media_login.dart';
import 'package:magdsoft_flutter_structure/presentation/widget/custom_button.dart';
import 'package:magdsoft_flutter_structure/presentation/widget/custom_form_field.dart';

import '../../../../constants/assets_manager.dart';
import '../../../styles/colors.dart';
import '../../../widget/social_icon.dart';
import 'card_item.dart';

class LoginItem extends StatelessWidget {
  const LoginItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(),
      children: const [
        CardItem(),
        SizedBox(height: 80,),
        SocialMediaLogin(),
      ],
    );
  }
}
