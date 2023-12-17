import 'package:flutter/material.dart';

import '../../../utils/constants/sizes.dart';


class EGridView extends StatelessWidget {
  const EGridView({
    super.key,
    required this.itemCount,
    required this.builder,
    this.mainAxisExtent = 262,
  });

  final int itemCount;
  final double mainAxisExtent;
  final Widget Function(BuildContext, int) builder;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: itemCount,
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: builder,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: ESizes.gridViewSpacing,
        crossAxisSpacing: ESizes.gridViewSpacing,
        mainAxisExtent: mainAxisExtent,
      ),
    );
  }
}
