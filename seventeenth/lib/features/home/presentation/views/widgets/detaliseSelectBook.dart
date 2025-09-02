// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:seventeenth/core/utils/enums.dart';
import 'package:seventeenth/core/utils/familyFonts.dart';
import 'package:seventeenth/core/utils/functions.dart';
import 'package:seventeenth/features/home/presentation/views/widgets/imageBookWidget.dart';
import 'package:seventeenth/features/home/presentation/views/widgets/markBookWidget.dart';

class DetaliseSelectBook extends StatelessWidget {
  const DetaliseSelectBook({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: Functions().responsive(ResponsiveTypeEnum.earia, 250),
          child: const ImageBookWidget(
            isArrow: false,
            width: 170,
          ),
        ),
        SizedBox(
          height: Functions().responsive(ResponsiveTypeEnum.hight, 48),
        ),
        Text(
          'The Jungle Book',
          style: TextStyle(
            fontSize: Functions().responsive(ResponsiveTypeEnum.earia, 32),
            fontFamily: FamilyFonts.gT,
            fontWeight: FontWeight.w500,
          ),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
        ),
        Text(
          'Rudyaard Kipling',
          style: TextStyle(
            fontSize: Functions().responsive(ResponsiveTypeEnum.earia, 20),
            color: Colors.grey,
          ),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        SizedBox(
          height: Functions().responsive(ResponsiveTypeEnum.hight, 12),
        ),
        const MarkBookWidget(),
      ],
    );
  }
}
