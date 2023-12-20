import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../utils/constants/colors.dart';
import '../images/circular_image.dart';


class UserProfileTile extends StatelessWidget {
  const UserProfileTile({
    required this.profileImage,
    required this.profileName,
    required this.profileEmail,
    this.isNetworkImage = false,
    this.showEditButton = true,
    this.onEditBtnPressed,
    super.key,
  });

  final String profileImage, profileName, profileEmail;
  final bool isNetworkImage, showEditButton;
  final VoidCallback? onEditBtnPressed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: ECircularImage(image: profileImage, width: 50, height: 50, padding: 0, isNetworkImage: isNetworkImage),
      title: Text(profileName, overflow: TextOverflow.ellipsis, maxLines: 1),
      titleTextStyle: Theme.of(context).textTheme.headlineSmall!.apply(color: EColors.white),
      subtitle: Text(profileEmail, overflow: TextOverflow.ellipsis, maxLines: 1),
      subtitleTextStyle: Theme.of(context).textTheme.bodySmall!.apply(color: EColors.white.withOpacity(.68)),
      trailing:
      showEditButton ? IconButton(icon: const Icon(Iconsax.edit), color: EColors.white, onPressed: onEditBtnPressed) : null,
    );
  }
}
