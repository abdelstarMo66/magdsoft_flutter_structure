import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:magdsoft_flutter_structure/business_logic/home_cubit/home_cubit.dart';
import 'package:magdsoft_flutter_structure/presentation/router/routes.dart';
import '../../../styles/colors.dart';
import 'product_item.dart';

class GridViewListed extends StatelessWidget {
  const GridViewListed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeStates>(
      builder: (context, state) {
        if (state is SuccessGetProductState) {
          var data = HomeCubit.get(context);
          return Expanded(
            child: MasonryGridView.count(
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              itemCount: data.allProducts!.length,
              mainAxisSpacing: 16.0,
              crossAxisSpacing: 30.0,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                if (index == 0) {
                  return Column(
                    children: const [
                      Text(
                        'Recomended for You',
                        style: TextStyle(
                          color: ColorManager.textColorBlack,
                          fontSize: 26,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                        height: 14.0,
                      ),
                    ],
                  );
                } else {
                  return ProductItem(
                    onTap: () {
                      Navigator.pushNamed(context, Routes.productDetailsRoute,
                          arguments: data.allProducts![index]);
                    },
                    products: data.allProducts![index],
                    favorite: index % 3 == 0 ? true : false,
                  );
                }
              },
            ),
          );
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
