// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:seventeenth/core/utils/enums.dart';
import 'package:seventeenth/core/utils/functions.dart';
import 'package:seventeenth/features/home/presentation/views/widgets/appBarDetaliseWidget.dart';
import 'package:seventeenth/features/home/presentation/views/widgets/detaliseViewBodyWidget.dart';

class DetaliseView extends StatelessWidget {
  const DetaliseView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(
          double.maxFinite,
          Functions().responsive(ResponsiveTypeEnum.earia, 80),
        ),
        child: const AppBarDetaliseWidget(),
      ),
      body: const DetaliseViewBodyWidget(),
    );
  }
}
