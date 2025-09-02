// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:seventeenth/core/utils/assetsImages.dart';
import 'package:seventeenth/core/utils/enums.dart';
import 'package:seventeenth/core/utils/functions.dart';

class LogoImage extends StatelessWidget {
  const LogoImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      AssetsImages.logo,
      height: Functions().responsive(ResponsiveTypeEnum.earia, 67),
      width: Functions().responsive(ResponsiveTypeEnum.earia, 300),
      fit: BoxFit.fill,
    );
  }
}
