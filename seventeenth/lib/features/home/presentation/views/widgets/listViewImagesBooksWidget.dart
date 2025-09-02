// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:seventeenth/core/utils/enums.dart';
import 'package:seventeenth/core/utils/functions.dart';
import 'package:seventeenth/features/home/presentation/views/widgets/imageBookWidget.dart';

class ListViewImagesBooksWidget extends StatelessWidget {
  const ListViewImagesBooksWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Functions().responsive(ResponsiveTypeEnum.earia, 232),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => const ImageBookWidget(
          isArrow: true,
          width: 152,
        ),
        itemCount: 10,
      ),
    );
  }
}
