import 'package:flutter/material.dart';

import '../../utils/text/app_text_styles.dart';
import 'custom_text.dart';

// Custom ListTile Widget
class CustomListTile extends StatelessWidget {
  final String? title;
  final IconData? leadingIcon;
  final VoidCallback? onTap;
  final Color? leadingIconColor;
  final Widget? subtitle;
  final Widget? trailing;
  final TextStyle? titleStyle;
  final Widget? leading;

  const CustomListTile({
    super.key,
    this.title,
    this.subtitle,
    this.leadingIcon,
    this.onTap,
    this.leadingIconColor,
    this.trailing,
    this.titleStyle,
    this.leading,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: leading ?? Icon(leadingIcon, color: leadingIconColor),
      title: CustomText(
        text: title!,
        textStyle: AppTextStyle.headerTextStyle(context),
      ),
      subtitle: subtitle,
      trailing: trailing,
      onTap: onTap,
    );
  }
}
