// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:seventeenth/core/utils/enums.dart';
import 'package:seventeenth/core/utils/functions.dart';
import 'package:seventeenth/features/home/presentation/views/widgets/buttons.dart';
import 'package:seventeenth/features/home/presentation/views/widgets/detaliseSelectBook.dart';
import 'package:seventeenth/features/home/presentation/views/widgets/listViewLikeBooks.dart';

class DetaliseViewBodyWidget extends StatelessWidget {
  const DetaliseViewBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: Functions().responsive(ResponsiveTypeEnum.width, 24),
      ),
      child:  Center(
        child: Column(
          children: [
            const DetaliseSelectBook(),
            const Spacer(),
            const Buttons(),
            const Spacer(),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'You can also like',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: Functions().responsive(ResponsiveTypeEnum.earia, 14),
                ),
              ),
            ),
            const ListViewLikeBooks(),
          ],
        ),
      ),
    );
  }
}
