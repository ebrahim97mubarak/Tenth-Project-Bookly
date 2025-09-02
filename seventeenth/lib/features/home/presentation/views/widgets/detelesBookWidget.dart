// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:seventeenth/core/utils/enums.dart';
import 'package:seventeenth/core/utils/functions.dart';
import 'package:seventeenth/features/home/presentation/views/widgets/sellAndMarkBookWidget.dart';

class DetelesBookWidget extends StatelessWidget {
  const DetelesBookWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          'Harry Potter and the Goblet of Fire',
          style: TextStyle(
            fontSize: Functions().responsive(ResponsiveTypeEnum.earia, 20),
            fontWeight: FontWeight.w500,
          ),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        Text(
          'J.K. Rowling',
          style: TextStyle(
            fontSize: Functions().responsive(ResponsiveTypeEnum.earia, 18),
            color: Colors.grey,
          ),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        const SellAndMarkBookWidget(),
      ],
    );
  }
}
