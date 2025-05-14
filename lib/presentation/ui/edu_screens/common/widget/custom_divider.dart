
import 'package:flutter/material.dart';

import '../../utils/color/app_colors.dart';
import '../../utils/text/app_size.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key, this.color, this.height});
  final Color? color;
  final double? height;
  @override
  Widget build(BuildContext context) {
    return Divider(
      height: height ?? AppSize.dividerHeight(context),
      color: color ?? AppColor.dividerColor,
    );
  }
}
