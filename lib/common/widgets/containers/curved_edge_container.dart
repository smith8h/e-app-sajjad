import 'package:flutter/material.dart';
import '../../../utils/constants/colors.dart';
import '../custom_shapes/curved_shape.dart';

class CurvedEdgeContainer extends StatelessWidget {
  const CurvedEdgeContainer({super.key, this.child, this.backgroundCoIor = EColors.primary});

  final Widget? child;
  final Color backgroundCoIor;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: ECurvedClipper(),
      child: Container(
        color: backgroundCoIor,
        padding: const EdgeInsets.all(0),
        child: child,
      ),
    );
  }
}
