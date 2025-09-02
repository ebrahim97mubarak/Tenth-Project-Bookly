// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:seventeenth/core/utils/enums.dart';
import 'package:seventeenth/core/utils/functions.dart';
import 'package:seventeenth/features/home/presentation/views/widgets/detelesBookWidget.dart';
import 'package:seventeenth/features/home/presentation/views/widgets/imageBookWidget.dart';

class BestBookItemWidget extends StatelessWidget {
  const BestBookItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            SizedBox(
              height: Functions().responsive(ResponsiveTypeEnum.earia, 110),
              child: const ImageBookWidget(
                isArrow: false,
                width: 68,
              ),
            ),
            SizedBox(
              width: Functions().responsive(ResponsiveTypeEnum.width, 20),
            ),
            const Expanded(
              child: DetelesBookWidget(),
            ),
          ],
        ),
        SizedBox(
          height: Functions().responsive(ResponsiveTypeEnum.hight, 24),
        ),
      ],
    );
  }
}
