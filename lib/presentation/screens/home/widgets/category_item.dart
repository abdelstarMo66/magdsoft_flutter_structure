import 'package:flutter/material.dart';
import 'package:magdsoft_flutter_structure/presentation/styles/colors.dart';

class CategoryItem extends StatelessWidget {
  final String image, text;
  final bool selected;
  const CategoryItem({
    Key? key,
    required this.image,
    required this.text,
    this.selected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: Container(
        decoration: BoxDecoration(
          color: selected ? ColorManager.lightBlue : ColorManager.white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: const [
            BoxShadow(
              color: Color(0x3F000000),
              blurRadius: 3,
              offset: Offset(3, 3),
            ),
          ],
        ),
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 6.0),
        child: Row(
          children: [
            Container(
              width: 40.0,
              height: 40.0,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                shadows: const [
                  BoxShadow(
                    color: Color(0x3F000000),
                    blurRadius: 8,
                    offset: Offset(2, 2),
                    spreadRadius: 4,
                  )
                ],
              ),
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(image),
            ),
            const SizedBox(
              width: 9.0,
            ),
            Text(
              text,
              style: TextStyle(
                color: selected ? Colors.white : Colors.black,
                fontSize: 22,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(
              width: 5.0,
            )
          ],
        ),
      ),
    );
  }
}
