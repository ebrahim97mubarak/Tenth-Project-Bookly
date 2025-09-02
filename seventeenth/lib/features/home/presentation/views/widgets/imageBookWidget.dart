// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:seventeenth/core/utils/assetsImages.dart';
import 'package:seventeenth/core/utils/enums.dart';
import 'package:seventeenth/core/utils/functions.dart';
import 'package:seventeenth/features/home/presentation/views/widgets/childImageBookWidget.dart';

class ImageBookWidget extends StatelessWidget {
  const ImageBookWidget({
    super.key,
    required this.isArrow,
    required this.width,
  });
  final bool isArrow;
  final double width;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: Functions().responsive(ResponsiveTypeEnum.width, 8),
      ),
      child: GestureDetector(
        onTap: () => Navigator.pushNamed(
          context,
          ViewsNames.detaliseView.toString(),
        ),
        child: Container(
          width: Functions().responsive(ResponsiveTypeEnum.earia, width),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(16)),
            image: DecorationImage(
              image: AssetImage(AssetsImages.test),
              fit: BoxFit.fill,
            ),
          ),
          padding: EdgeInsets.all(
            Functions().responsive(ResponsiveTypeEnum.earia, 12),
          ),
          child: isArrow == true ? const ChildImageBookWidget() : null,
        ),
      ),
    );
  }
}
