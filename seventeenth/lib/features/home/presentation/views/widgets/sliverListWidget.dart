// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:seventeenth/core/utils/enums.dart';
import 'package:seventeenth/core/utils/familyFonts.dart';
import 'package:seventeenth/core/utils/functions.dart';
import 'package:seventeenth/features/home/presentation/views/widgets/listViewBestSellerWidget.dart';
import 'package:seventeenth/features/home/presentation/views/widgets/listViewImagesBooksWidget.dart';
import 'package:seventeenth/generated/l10n.dart';

class SliverListWidget extends StatelessWidget {
  const SliverListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: ListViewImagesBooksWidget(),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: Functions().responsive(ResponsiveTypeEnum.hight, 52),
            ),
          ),
          SliverToBoxAdapter(
            child: Text(
              S.of(context).BestSeller,
              style: TextStyle(
                fontSize: Functions().responsive(ResponsiveTypeEnum.earia, 18),
                fontFamily: FamilyFonts.montserrat,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: Functions().responsive(ResponsiveTypeEnum.hight, 24),
            ),
          ),
          const ListViewBestSellerWidget(),
        ],
      ),
    );
  }
}