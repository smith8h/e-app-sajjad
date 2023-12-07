import 'package:e_store/common/widgets/custom_shapes/curved_shape.dart';
import 'package:e_store/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import '../../../common/widgets/custom_shapes/circular_shape.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            CurvedEdgeContainer(
              child: SizedBox(
                height: 400,
                child: Stack(
                  children: [
                    Positioned(top: -150, right: -250, child: ECircularShape(backgroundCoIor: EColors.white.withOpacity(0.1))),
                    Positioned(top: 100, right: -300, child: ECircularShape(backgroundCoIor: EColors.white.withOpacity(0.1))),
                    const Column(
                      children: [],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}