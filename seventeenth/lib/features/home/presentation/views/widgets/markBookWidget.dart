// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:seventeenth/core/utils/enums.dart';
import 'package:seventeenth/core/utils/familyFonts.dart';
import 'package:seventeenth/core/utils/functions.dart';

class MarkBookWidget extends StatelessWidget {
  const MarkBookWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.star,
          size: Functions().responsive(ResponsiveTypeEnum.earia, 24),
          color: Colors.yellow,
        ),
        SizedBox(
          width: Functions().responsive(ResponsiveTypeEnum.width, 6),
        ),
        Text(
          '4.8',
          style: TextStyle(
            fontFamily: FamilyFonts.montserrat,
            fontSize: Functions().responsive(ResponsiveTypeEnum.earia, 18),
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          width: Functions().responsive(ResponsiveTypeEnum.width, 4),
        ),
        Text(
          '(2380)',
          style: TextStyle(
            fontFamily: FamilyFonts.montserrat,
            fontSize: Functions().responsive(ResponsiveTypeEnum.earia, 18),
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
