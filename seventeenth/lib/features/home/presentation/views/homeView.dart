// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:seventeenth/features/home/presentation/views/widgets/homeViewBodyWidget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const HomeViewBodyWidget(),
    );
  }
}
