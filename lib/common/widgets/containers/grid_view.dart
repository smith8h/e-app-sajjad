import 'package:flutter/material.dart';

import '../../../utils/constants/sizes.dart';


class EGridView extends StatelessWidget {
  const EGridView({
    super.key,
    required this.itemCount,
    required this.builder,
    this.childHeight = 262,
    this.columns = 2,
  });

  final int itemCount, columns;
  final double childHeight;
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
        crossAxisCount: columns,
        mainAxisSpacing: ESizes.gridViewSpacing,
        crossAxisSpacing: ESizes.gridViewSpacing,
        mainAxisExtent: childHeight,
      ),
    );
  }
}
