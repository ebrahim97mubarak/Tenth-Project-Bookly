// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:seventeenth/features/home/presentation/views/widgets/bestBookItemWidget.dart';

class ListViewBestSellerWidget extends StatelessWidget {
  const ListViewBestSellerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemBuilder: (context, index) => const BestBookItemWidget(),
      itemCount: 10,
    );
  }
}
