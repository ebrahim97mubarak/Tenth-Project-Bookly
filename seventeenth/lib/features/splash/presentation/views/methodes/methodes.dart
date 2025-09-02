import 'package:flutter/material.dart';
import 'package:seventeenth/core/utils/enums.dart';

class MethodesSplash {
  void animatedTextMethodAndNavigator(ValueNotifier<Offset> offset, BuildContext context) {
    Future.delayed(
      const Duration(milliseconds: 100),
      () {
        offset.value = const Offset(0, 0);
        navigator(context);
      },
    );
  }

  void navigator(BuildContext context) {
    Future.delayed(
      const Duration(milliseconds: 1500),
      () => Navigator.popAndPushNamed(
        context,
        ViewsNames.homeView.toString(),
      ),
    );
  }
}
