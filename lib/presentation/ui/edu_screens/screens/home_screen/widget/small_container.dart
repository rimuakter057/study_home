import 'package:flutter/material.dart';

import '../../../common/widget/Custom_container.dart';
import '../../../common/widget/custom_text.dart';
import '../../../utils/color/app_colors.dart';
import '../../../utils/text/app_size.dart';
import '../../../utils/text/app_text_styles.dart';

/// home body small controller

class SmallContainer extends StatelessWidget {
  const SmallContainer({
    super.key,
    this.borderRadius,
    this.containerColor,
    this.text,
    this.child,
    this.gradient,
    this.borderWidth,
    this.height,
    this.width,
    this.borderColor,
    this.padding, // Optional child (Row/Column)
  });

  final BorderRadiusGeometry? borderRadius;
  final Color? containerColor;
  final String? text;
  final Widget? child;
  final Gradient? gradient;
  final double? borderWidth;
  final double? height;
  final double? width;
  final Color? borderColor;
  final EdgeInsetsGeometry? padding;
  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      padding: padding,
      gradient: gradient,
      containerColor: containerColor ?? AppColor.secondaryTextColor,
      borderWidth: borderWidth ?? 1,
      width: width ?? AppSize.containerWidthSm(context),
      height: height ?? AppSize.containerHeightSm(context),
      borderColor: borderColor ?? AppColor.black,
      borderRadius:
          borderRadius ??
          BorderRadius.circular(AppSize.borderRadiusSm(context)),

      child:
          child ??
          Center(
            child: CustomText(
              text: text ?? " ",
              textStyle: AppTextStyle.textStyleSm(context),
            ),
          ),
    );
  }
}
