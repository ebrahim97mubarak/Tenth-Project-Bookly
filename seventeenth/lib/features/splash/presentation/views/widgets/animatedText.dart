// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:seventeenth/core/utils/enums.dart';
import 'package:seventeenth/core/utils/functions.dart';

class AnimatedText extends StatelessWidget {
  const AnimatedText({
    super.key,
    required this.offset,
  });

  final ValueNotifier<Offset> offset;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: offset,
      child: Text(
        'Read Free Box',
        style: TextStyle(
          fontSize: Functions().responsive(ResponsiveTypeEnum.earia, 20),
        ),
      ),
      builder: (context, value, child) => AnimatedSlide(
        duration: const Duration(seconds: 1),
        offset: offset.value,
        child: child,
      ),
    );
  }
}