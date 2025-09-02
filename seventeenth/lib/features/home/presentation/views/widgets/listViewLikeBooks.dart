// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:seventeenth/core/utils/enums.dart';
import 'package:seventeenth/core/utils/functions.dart';
import 'package:seventeenth/features/home/presentation/views/widgets/imageBookWidget.dart';

class ListViewLikeBooks extends StatelessWidget {
  const ListViewLikeBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: Functions().responsive(ResponsiveTypeEnum.hight, 32),
        top: Functions().responsive(ResponsiveTypeEnum.hight, 12),
      ),
      child: SizedBox(
        height: Functions().responsive(ResponsiveTypeEnum.earia, 152),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => const ImageBookWidget(
            isArrow: false,
            width: 100,
          ),
          itemCount: 10,
        ),
      ),
    );
  }
}
