import 'package:flutter/material.dart';
import 'package:magdsoft_flutter_structure/data/models/product_model.dart';
import 'package:magdsoft_flutter_structure/presentation/styles/colors.dart';
import 'package:magdsoft_flutter_structure/presentation/widget/custom_button.dart';
import 'package:magdsoft_flutter_structure/presentation/widget/custom_image.dart';
import '../../../../constants/assets_manager.dart';
import '../../../widget/background.dart';

class ProductDetailsScreen extends StatelessWidget {
  final Products productData;
  const ProductDetailsScreen({Key? key, required this.productData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            const BackGround(),
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              padding:
                  const EdgeInsets.symmetric(horizontal: 23.0, vertical: 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 50.0,
                    height: 50.0,
                    child: OutlinedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(
                        Icons.arrow_back_ios_new,
                        color: ColorManager.gray,
                      ),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        shadowColor: Colors.black,
                        padding: EdgeInsets.zero,
                        elevation: 8.0,
                        backgroundColor: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16.0,
                  ),
                  Text(
                    productData.name ?? "Not Found",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(
                    height: 6.0,
                  ),
                  Text(
                    'Type: ${productData.type ?? "Not Found"}',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(
                    height: 16.0,
                  ),
                  CustomImage(
                      size: 364 / 300,
                      image: productData.image ?? AssetsManager.notFoundImage),
                  const SizedBox(
                    height: 16.0,
                  ),
                  SizedBox(
                    height: 100.0,
                    child: ListView.separated(
                      padding: EdgeInsets.zero,
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => CustomImage(
                          size: 1,
                          image:
                              productData.image ?? AssetsManager.notFoundImage),
                      separatorBuilder: (context, index) => const SizedBox(
                        width: 16.0,
                      ),
                      itemCount: 4,
                    ),
                  ),
                  const SizedBox(
                    height: 16.0,
                  ),
                  Container(
                    width: 364,
                    height: 65,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      shadows: const [
                        BoxShadow(
                          color: Color(0x33000000),
                          blurRadius: 4,
                          offset: Offset(0, 2),
                          spreadRadius: 5,
                        )
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          right: 21.0, left: 6.0, top: 5.0, bottom: 5.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const CustomImage(
                              size: 1,
                              image:
                                  "https://ifp.world/wp-content/uploads/2021/05/Acer-Logo.png"),
                          const SizedBox(
                            width: 12.0,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                'Acer Official Store',
                                style: TextStyle(
                                  color: Color(0xFF464646),
                                  fontSize: 17,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text(
                                'View Store',
                                style: TextStyle(
                                  color: Color(0xFFB1B1B1),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                          Container(
                            width: 30,
                            height: 30,
                            decoration: ShapeDecoration(
                              color: const Color(0xFFF3F3F3),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)),
                              shadows: const [
                                BoxShadow(
                                  color: Color(0x33000000),
                                  blurRadius: 4,
                                  offset: Offset(0, 2),
                                  spreadRadius: 1,
                                )
                              ],
                            ),
                            child: const Icon(
                              Icons.arrow_forward_ios_outlined,
                              color: ColorManager.lightBlue,
                              size: 16.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Price',
                            style: TextStyle(
                              color: Color(0xFFB1B1B1),
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            productData.price ?? "0.0",
                            style: const TextStyle(
                              color: Color(0xFF464646),
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        width: 50.0,
                      ),
                      Expanded(
                          child: CustomButton(
                              text: "Add To Card", onPressed: () {})),
                    ],
                  ),
                  Container(
                    height: 1.0,
                    color: ColorManager.lightBlue,
                    width: double.infinity,
                    margin: const EdgeInsets.symmetric(
                        horizontal: 38.0, vertical: 35.0),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          const Text(
                            'Overview',
                            style: TextStyle(
                              color: Color(0xFF464646),
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Container(
                            width: 8.0,
                            height: 8.0,
                            margin: const EdgeInsets.only(top: 7.0),
                            decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                  begin: Alignment(1.20, 1.50),
                                  end: Alignment(-0.2, 0),
                                  colors: [
                                    Color(0x440062BD),
                                    Color(0x7F0062BD),
                                    Color(0xFF0062BD),
                                  ],
                                ),
                                borderRadius: BorderRadius.circular(10.0)),
                          ),
                        ],
                      ),
                      const Text(
                        'Spesification',
                        style: TextStyle(
                          color: Color(0xFFB1B1B1),
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const Text(
                        'Review',
                        style: TextStyle(
                          color: Color(0xFFB1B1B1),
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 35.0,
                  ),
                  Text(
                    productData.description ?? "Not Found",
                    style: const TextStyle(
                      color: Color(0xFFB1B1B1),
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
