// ignore_for_file: file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:seventeenth/core/utils/enums.dart';
import 'package:seventeenth/core/utils/functions.dart';
import 'package:seventeenth/features/home/presentation/views/widgets/appBarHomeWidget.dart';
import 'package:seventeenth/features/home/presentation/views/widgets/sliverListWidget.dart';

class HomeViewBodyWidget extends StatelessWidget {
  const HomeViewBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: Functions().responsive(ResponsiveTypeEnum.hight, 12),
        right: Functions().responsive(ResponsiveTypeEnum.width, 24),
        left: Functions().responsive(ResponsiveTypeEnum.width, 24),
        top: Functions().responsive(ResponsiveTypeEnum.hight, 48),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const AppBarHomeWidget(),
          SizedBox(
            height: Functions().responsive(ResponsiveTypeEnum.hight, 36),
          ),
          const SliverListWidget(),
        ],
      ),
    );
  }
}
