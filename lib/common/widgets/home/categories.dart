import 'package:flutter/material.dart';

import '../../../utils/constants/image_strings.dart';
import '../containers/vertical_image_text.dart';

class HomeCategories extends StatelessWidget {
  const HomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: 7,
        itemBuilder: (_, index) => const VerticalImageText(image: EImages.categoriesCosmetics, title: 'كوزمتك'),
      ),
    );
  }
}
