
import 'package:flutter/material.dart';

import '../../utils/color/gradient_color.dart';
import '../../utils/text/app_text_styles.dart';
import 'custom_icon.dart';
import 'custom_text.dart';

class CustomAppBarEdu extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Widget? leading;
  final Gradient? gradient;
  final IconData? icon;

  const CustomAppBarEdu({
    super.key,
    required this.title,
    this.leading,
    this.gradient,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      // AppBar's height
      toolbarHeight: kToolbarHeight + 30,
      leading: leading,
      title: CustomText(
        text: title,
        textStyle: AppTextStyle.appbarTextStyle(context),
      ),
      actions: [CustomIcon(icon: icon)],
      flexibleSpace: Container(
        decoration: BoxDecoration(
          gradient:
              gradient ??
              AppGradients.primaryGradient, // Gradient color for AppBar
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight + 30); // This sets the height of the AppBar
}
