import 'package:flutter/material.dart';
import 'package:magdsoft_flutter_structure/constants/assets_manager.dart';
import 'package:magdsoft_flutter_structure/data/data_providers/local/cache_helper.dart';
import 'package:magdsoft_flutter_structure/presentation/styles/colors.dart';
import '../../../constants/constant.dart';
import '../../router/routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    logging = CacheHelper.getDataFromSharedPreference(key: "logging")?? false;
    print(logging);
    Future.delayed(const Duration(seconds: 2), () {
      logging
          ? Navigator.pushReplacementNamed(
              context,
              Routes.homeRoute,
            )
          : Navigator.pushReplacementNamed(
              context,
              Routes.loginRoute,
            );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.lightBlue,
      body: Stack(
        alignment: Alignment.center,
        fit: StackFit.expand,
        children: [
          Image.asset(AssetsManager.splashComp),
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AssetsManager.logoSplash),
              ),
            ),
          ),
          // Positioned(
          //   right: -5,
          //   top: MediaQuery.of(context).size.height - 350,
          //   child: Opacity(
          //       opacity: 0.8,
          //       child: Image.asset(
          //         AssetsManager.rectangle,
          //         height: 250.0,
          //       )),
          // ),
          // Positioned(
          //   left: -20,
          //   bottom: MediaQuery.of(context).size.height - 350,
          //   child: Opacity(
          //       opacity: 0.8,
          //       child: Transform.rotate(
          //         angle: 160,
          //         child: Image.asset(
          //           AssetsManager.rectangle,
          //           height: 250.0,
          //         ),
          //       )),
          // ),
          // Positioned(
          //   left: 0,
          //   top: MediaQuery.of(context).size.height - 350,
          //   child: Opacity(
          //       opacity: 0.9,
          //       child: Image.asset(
          //         AssetsManager.subtract,
          //
          //       )),
          // ),
          // Positioned(
          //   right: 0,
          //   bottom: MediaQuery.of(context).size.height - 300,
          //   child: Opacity(
          //       opacity: 0.9,
          //       child: Transform.rotate(
          //         angle: 90,
          //         child: Image.asset(
          //           AssetsManager.subtract,
          //         ),
          //       )),
          // ),
        ],
      ),
    );
  }
}
