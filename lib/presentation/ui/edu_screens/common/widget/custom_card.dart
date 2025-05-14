
import 'package:flutter/material.dart';



import '../../utils/color/app_colors.dart';
import '../../utils/text/app_size.dart';

class CustomCard extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final Color? shadowColor;
  const CustomCard({
    super.key,
    required this.child,
    this.margin,
    this.padding,
    this.shadowColor,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      shadowColor: shadowColor ?? AppColor.secondaryTextColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          AppSize.borderRadiusSm(context),
        ),
      ),
      child: child,
    );
  }
}
