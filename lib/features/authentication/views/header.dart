import 'package:flutter/material.dart';
import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/sizes.dart';

class Header extends StatelessWidget {
  final String title, subtitle, image;
  const Header({required this.title, required this.subtitle, required this.image, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image(height: 100, image: AssetImage(image)),
        Text(
          title,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(height: ESizes.sm),
        Text(
          subtitle,
          style: Theme.of(context).textTheme.bodyMedium,
        )
      ],
    );
  }
}
