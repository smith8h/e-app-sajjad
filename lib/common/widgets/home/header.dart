import 'package:flutter/material.dart';
import '../../../utils/constants/colors.dart';
import '../containers/circular_shape.dart';
import '../containers/curved_edge_container.dart';

class PrimaryHeaderContainer extends StatelessWidget {
  const PrimaryHeaderContainer({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return CurvedEdgeContainer(
      child: Container(
        padding: const EdgeInsets.only(bottom: 10),
        child: Stack(
          children: [
            Positioned(top: -150, right: -250, child: ECircularShape(backgroundColor: EColors.white.withOpacity(0.1))),
            Positioned(top: 100, right: -300, child: ECircularShape(backgroundColor: EColors.white.withOpacity(0.1))),
            child,
          ],
        ),
      ),
    );
  }
}
