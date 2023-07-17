import 'package:flutter/material.dart';
import 'package:magdsoft_flutter_structure/presentation/screens/home/widgets/app_bar.dart';
import 'package:magdsoft_flutter_structure/presentation/screens/home/widgets/category_list.dart';
import 'package:magdsoft_flutter_structure/presentation/screens/home/widgets/home_image.dart';
import '../../../widget/background.dart';
import 'gridview_list.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          const BackGround(),
          ListView(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
            physics: const BouncingScrollPhysics(),
            children: const [
              AppBarSearch(),
              SizedBox(
                height: 22.0,
              ),
              HomeImage(),
              SizedBox(
                height: 14.0,
              ),
              CategoryListed(),
              SizedBox(
                height: 13.0,
              ),
              GridViewListed(),
            ],
          ),
        ],
      ),
    );
  }
}
