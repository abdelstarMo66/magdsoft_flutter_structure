import 'package:flutter/material.dart';

import '../../../styles/colors.dart';

class AppBarSearch extends StatelessWidget {
  const AppBarSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Card(
            shadowColor: const Color(0xFF000000),
            elevation: 8,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: TextFormField(
              validator: (val) {
                return null;
              },
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                filled: true,
                fillColor: ColorManager.white,
                hintText: "Search",
                hintStyle: const TextStyle(
                  color: Color(0xFFB1B1B1),
                  fontSize: 19,
                  fontWeight: FontWeight.w400,
                ),
                contentPadding:
                const EdgeInsets.symmetric(horizontal: 15.0),
                suffixIcon: const Icon(
                  Icons.search,
                  color: Color(0xFFB1B1B1),
                  size: 26.0,
                ),
              ),
              style: const TextStyle(
                  color: ColorManager.textColorBlack),
            ),
          ),
        ),
        const SizedBox(
          width: 16.0,
        ),
        Container(
          width: 50,
          height: 50,
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            shadows: const [
              BoxShadow(
                color: Color(0x3F000000),
                blurRadius: 5,
                offset: Offset(2, 2),
                spreadRadius: 5,
              )
            ],
          ),
          child: const Icon(
            Icons.filter_alt_rounded,
            color: Color(0xFFB1B1B1),
          ),
        ),
      ],
    );
  }
}
