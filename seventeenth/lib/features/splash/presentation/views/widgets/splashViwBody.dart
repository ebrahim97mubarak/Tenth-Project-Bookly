// ignore_for_file: file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:seventeenth/core/utils/enums.dart';
import 'package:seventeenth/core/utils/functions.dart';
import 'package:seventeenth/features/splash/presentation/views/methodes/methodes.dart';
import 'package:seventeenth/features/splash/presentation/views/widgets/animatedText.dart';
import 'package:seventeenth/features/splash/presentation/views/widgets/logoImage.dart';

class SplashViwBody extends StatefulWidget {
  const SplashViwBody({super.key});

  @override
  State<SplashViwBody> createState() => _SplashViwBodyState();
}

class _SplashViwBodyState extends State<SplashViwBody> {
  ValueNotifier<Offset> offset = ValueNotifier(
    Offset(0, Functions().responsive(ResponsiveTypeEnum.hight, 15)),
  );
  @override
  void initState() {
    super.initState();
    MethodesSplash().animatedTextMethodAndNavigator(offset, context);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const LogoImage(),
          SizedBox(
            height: Functions().responsive(ResponsiveTypeEnum.hight, 28),
          ),
          AnimatedText(offset: offset),
        ],
      ),
    );
  }
}
