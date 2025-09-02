// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:seventeenth/core/utils/enums.dart';
import 'package:seventeenth/core/utils/functions.dart';

class ChildImageBookWidget extends StatelessWidget {
  const ChildImageBookWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: CircleAvatar(
        radius: Functions().responsive(ResponsiveTypeEnum.earia, 20),
        backgroundColor: Colors.white24,
        child: Icon(
          Icons.play_arrow,
          size: Functions().responsive(ResponsiveTypeEnum.earia, 24),
          color: Colors.white,
        ),
      ),
    );
  }
}
