import 'package:flutter/material.dart';
import 'package:seventeenth/core/utils/enums.dart';
import 'package:seventeenth/core/utils/familyFonts.dart';
import 'package:seventeenth/core/utils/functions.dart';

class Buttons extends StatelessWidget {
  const Buttons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: Functions().responsive(ResponsiveTypeEnum.hight, 50),
          width: Functions().responsive(ResponsiveTypeEnum.width, 170),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(16),
              topLeft: Radius.circular(16),
            ),
          ),
          child: Center(
            child: Text(
              '19.99\$',
              style: TextStyle(
                fontFamily: FamilyFonts.montserrat,
                fontSize: Functions().responsive(ResponsiveTypeEnum.earia, 20),
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
        ),
        Container(
          height: Functions().responsive(ResponsiveTypeEnum.hight, 50),
          width: Functions().responsive(ResponsiveTypeEnum.width, 170),
          decoration: const BoxDecoration(
            color: Color(0xffE57866),
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(16),
              topRight: Radius.circular(16),
            ),
          ),
          child: Center(
            child: Text(
              'Free Preview',
              style: TextStyle(
                fontSize: Functions().responsive(ResponsiveTypeEnum.earia, 16),
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
