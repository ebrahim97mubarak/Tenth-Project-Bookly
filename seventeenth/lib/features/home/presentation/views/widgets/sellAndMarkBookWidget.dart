// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:seventeenth/core/utils/enums.dart';
import 'package:seventeenth/core/utils/familyFonts.dart';
import 'package:seventeenth/core/utils/functions.dart';
import 'package:seventeenth/features/home/presentation/views/widgets/markBookWidget.dart';

class SellAndMarkBookWidget extends StatelessWidget {
  const SellAndMarkBookWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '19.99\$',
          style: TextStyle(
            fontFamily: FamilyFonts.montserrat,
            fontSize: Functions().responsive(ResponsiveTypeEnum.earia, 20),
            fontWeight: FontWeight.bold,
          ),
        ),
        const Spacer(),
        const MarkBookWidget()
      ],
    );
  }
}
