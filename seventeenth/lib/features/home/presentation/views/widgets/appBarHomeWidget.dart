// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:seventeenth/core/utils/assetsImages.dart';
import 'package:seventeenth/core/utils/enums.dart';
import 'package:seventeenth/core/utils/functions.dart';

class AppBarHomeWidget extends StatelessWidget {
  const AppBarHomeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          AssetsImages.logo,
          height: Functions().responsive(ResponsiveTypeEnum.earia, 16),
          width: Functions().responsive(ResponsiveTypeEnum.earia, 72),
          fit: BoxFit.fill,
        ),
        Icon(
          Icons.search,
          size: Functions().responsive(ResponsiveTypeEnum.earia, 24),
        ),
      ],
    );
  }
}