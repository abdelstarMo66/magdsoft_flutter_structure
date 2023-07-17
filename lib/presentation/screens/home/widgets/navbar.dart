import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:magdsoft_flutter_structure/data/data_providers/local/cache_helper.dart';
import 'package:magdsoft_flutter_structure/presentation/router/routes.dart';
import 'package:magdsoft_flutter_structure/presentation/widget/toast.dart';

import '../../../styles/colors.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      elevation: 26.0,
      notchMargin: 7,
      clipBehavior: Clip.antiAlias,
      shape: const CircularNotchedRectangle(),
      height: 60.0,
      color: ColorManager.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, Routes.helpRoute);
            },
            icon: const Icon(
              FontAwesomeIcons.gear,
              color: ColorManager.gray,
              size: 26.0,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              FontAwesomeIcons.bell,
              color: ColorManager.gray,
              size: 26.0,
            ),
          ),
          const SizedBox(
            width: 20.0,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              FontAwesomeIcons.heart,
              color: ColorManager.gray,
              size: 26.0,
            ),
          ),
          IconButton(
            onPressed: () {
              CacheHelper.removeData(key: "logging").then((value) {
                showToast(context, "Sign Out Successfully");
                Navigator.pushReplacementNamed(context, Routes.loginRoute);
              }).catchError((e) {
                showToast(context, e.toString());
              });
            },
            icon: const Icon(
              FontAwesomeIcons.rightFromBracket,
              color: ColorManager.gray,
              size: 26.0,
            ),
          ),
        ],
      ),
    );
  }
}
