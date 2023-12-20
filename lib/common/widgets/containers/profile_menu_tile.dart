import 'package:flutter/material.dart';

import '../../../utils/constants/sizes.dart';


class ProfileMenuTile extends StatelessWidget {
  const ProfileMenuTile({
    super.key,
    required this.title,
    required this.value,
    this.onTap,
    required this.icon,
  });

  final String title, value;
  final VoidCallback? onTap;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: ESizes.spaceBtwItems),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(flex: 3, child: Text(title, style: Theme.of(context).textTheme.bodySmall, overflow: TextOverflow.ellipsis)),
            Expanded(flex: 5, child: Text(value, style: Theme.of(context).textTheme.bodyMedium, overflow: TextOverflow.ellipsis)),
            Icon(icon, size: 18),
          ],
        ),
      ),
    );
  }
}
