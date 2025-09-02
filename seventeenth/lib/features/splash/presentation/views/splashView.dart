// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:seventeenth/features/splash/presentation/views/widgets/splashViwBody.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SplashViwBody(),
    );
  }
}
