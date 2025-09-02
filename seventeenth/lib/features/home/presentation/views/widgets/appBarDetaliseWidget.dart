// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:seventeenth/core/utils/enums.dart';
import 'package:seventeenth/core/utils/functions.dart';

class AppBarDetaliseWidget extends StatelessWidget {
  const AppBarDetaliseWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: AppBar(
        backgroundColor: Colors.transparent,
        toolbarHeight: Functions().responsive(ResponsiveTypeEnum.earia, 80),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(
            Icons.close,
            size: Functions().responsive(ResponsiveTypeEnum.earia, 24),
          ),
          padding: const EdgeInsets.all(0),
        ),
        leadingWidth: Functions().responsive(ResponsiveTypeEnum.earia, 56),
        actions: [
          IconButton(
            padding: const EdgeInsets.all(0),
            onPressed: () {},
            icon: Icon(
              Icons.shopping_cart_outlined,
              size: Functions().responsive(ResponsiveTypeEnum.earia, 24),
            ),
            constraints: BoxConstraints(
              minWidth: Functions().responsive(ResponsiveTypeEnum.earia, 40),
              minHeight: Functions().responsive(ResponsiveTypeEnum.earia, 40),
            ),
          ),
        ],
      ),
    );
  }
}
