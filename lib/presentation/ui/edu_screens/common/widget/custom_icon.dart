
import 'package:flutter/material.dart';

import '../../utils/color/app_colors.dart';
import '../../utils/text/app_size.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({
    super.key,
    required this.icon,
    this.onTap,
    this.iconColor,
    this.iconSize,
  });

  final IconData? icon;
  final void Function()? onTap;
  final Color? iconColor;
  final double? iconSize;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Icon(
        icon ?? Icons.search,
        color: iconColor ?? AppColor.white,
        size: iconSize ?? AppSize.iconMd(context),
      ),
    );
  }
}
