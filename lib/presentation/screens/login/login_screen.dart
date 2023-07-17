import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:magdsoft_flutter_structure/business_logic/login_cubit/login_cubit.dart';
import 'package:magdsoft_flutter_structure/constants/assets_manager.dart';
import 'package:magdsoft_flutter_structure/presentation/screens/login/widgets/image_bg.dart';
import 'package:magdsoft_flutter_structure/presentation/screens/login/widgets/login_item.dart';
import 'package:magdsoft_flutter_structure/presentation/screens/login/widgets/social_media_login.dart';
import 'package:magdsoft_flutter_structure/presentation/styles/colors.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(),
      child: Scaffold(
        backgroundColor: ColorManager.lightBlue,
        body: Stack(
          children: [
            Align(
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    opacity: 0.5,
                    alignment: Alignment.topCenter,
                    image: AssetImage(AssetsManager.loginPhoto),
                  ),
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 320.0,),
                    Expanded(
                      child: Container(
                          height: 500,
                          decoration: const BoxDecoration(
                            color: ColorManager.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(60.0),
                              topRight: Radius.circular(60.0),
                            ),
                          )
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const LoginItem(),
          ],
        ),
      ),
    );
  }
}
