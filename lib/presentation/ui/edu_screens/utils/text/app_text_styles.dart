
import 'package:flutter/material.dart';

import '../color/app_colors.dart';
import 'app_size.dart';

class AppTextStyle {
  AppTextStyle._(); // Private constructor
  ///drawer section
  static TextStyle headerTextStyle(BuildContext context, {
    double? textFontSize,
    Color? textColor,
    FontWeight? fontWeight,
    double? fontSize,
  }) {

    double finalSize = AppSize.headerTextSize(context);

    finalSize = textFontSize ?? finalSize;

    Color myTextColor = textColor ?? AppColor.black;
    fontWeight = fontWeight ?? FontWeight.bold;

    return TextStyle(
      fontSize: finalSize,
      fontWeight: fontWeight,
      color: myTextColor,
    );
  }


  /// common text style
  static TextStyle textStyleMd(BuildContext context) {
    return TextStyle(
      fontSize: AppSize.fontSizeLg(context),
      fontWeight: FontWeight.bold,
      color: AppColor.black,
    );
  }

  ///secondary text style
  static TextStyle secondaryTextStyle(BuildContext context) {
    return TextStyle(
      fontSize: AppSize.fontSizeMd(context),
      fontWeight: FontWeight.w400,
      color: AppColor.grey,
    );
  }

  ///appbar text style
  static TextStyle appbarTextStyle(BuildContext context) {
    return TextStyle(
      fontSize: AppSize.fontSizeLg(context),
      fontWeight: FontWeight.bold,
      color: AppColor.white,
    );
  }

  ///data text style
  static TextStyle dataTextStyle(BuildContext context) {
    return     TextStyle(
        fontSize: AppSize.fontSizeMd(context),
        fontWeight: FontWeight.w500,
        color: AppColor.black
    ) ;
  }

  ///small text style
  static TextStyle textStyleSm(BuildContext context, {
    double? textFontSize, // New parameter for custom font size
    Color? textColor,
    FontWeight? fontWeight,
    double? fontSize, // Deprecated or redundant, can be removed
  }) {
    // Default font size
    double defaultFontSize = AppSize.fontSizeSm(context);

    // If a custom font size is provided, use it; otherwise, fallback to default.
    double finalFontSize = textFontSize ?? defaultFontSize;
    Color myTextColor = textColor ?? AppColor.black;
    fontWeight = fontWeight ?? FontWeight.bold;

    return TextStyle(
      fontSize: finalFontSize,
      fontWeight: fontWeight,
      color: myTextColor,
    );
  }
}
