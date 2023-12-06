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
            Container(
              color: EColors.primary,
              padding: const EdgeInsets.all(0),
              child: Stack(
                children: [
                  ECircularShape(backgroundCoIor: EColors.white.withOpacity(0.1)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

