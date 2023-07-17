import 'package:flutter/material.dart';
import '../../../../constants/assets_manager.dart';
import 'category_item.dart';

class CategoryListed extends StatelessWidget {
  const CategoryListed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List categoryList = [
      ["All", AssetsManager.allLogo],
      ["Acer", AssetsManager.aserLogo],
      ["Razer", AssetsManager.razerLogo],
      ["Apple", AssetsManager.apple],
    ];
    return SizedBox(
      height: 52.0,
      child: ListView.builder(
        padding: EdgeInsets.zero,
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: categoryList.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: CategoryItem(
              image: categoryList[index][1],
              text: categoryList[index][0],
              selected: index == 0 ? true : false,
            ),
          );
        },
      ),
    );
  }
}
