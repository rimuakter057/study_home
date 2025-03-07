/*
import 'package:flutter/material.dart';
import 'package:study_home/presentation/utils/constants/size/sizes.dart';
import 'package:study_home/presentation/utils/screen_size/screen_size.dart';

class TextFontSize{

  static double getSignHeadline(BuildContext context, {double mobile = AppSizes.md, double tablet = AppSizes.md, double desktop = AppSizes.lg}) {
    double width = MediaQuery.of(context).size.width;  // screen width পাই
    DeviceType deviceType = ScreenSize.getDeviceType(width);  // device type নির্ধারণ করি

    switch (deviceType) {
      case DeviceType.mobile:
        return mobile;
      case DeviceType.tablet:
        return tablet;
      case DeviceType.desktop:
        return desktop;
      default:
        return mobile;
    }
  }
}
*/

import 'package:flutter/material.dart';
import 'package:study_home/presentation/utils/constants/color.dart';
import 'package:study_home/presentation/utils/constants/size/sizes.dart';
import 'package:study_home/presentation/utils/screen_size/screen_size.dart';

class AppTextStyles {
  // theme color
  static Color getTextColor(BuildContext context) {
    if (Theme.of(context).brightness == Brightness.dark) {
      return AppColors.white; // Dark theme text color
    } else {
      return AppColors.black; // Light theme text color
    }
  }

  /// Sign in title
  static TextStyle titleStyle(
    BuildContext context, {
    double mobile = AppSizes.lg,
    double tablet = AppSizes.xl,
    double desktop = AppSizes.xl,
  }) {
    double width = MediaQuery.of(context).size.width; // screen width পাই
    DeviceType deviceType = ScreenSize.getDeviceType(
      width,
    ); // device type নির্ধারণ করি

    Color textColor = getTextColor(context);

    switch (deviceType) {
      case DeviceType.mobile:
        return TextStyle(
          fontSize: mobile,
          fontWeight: FontWeight.bold,
          color: textColor,
        );
      case DeviceType.tablet:
        return TextStyle(
          fontSize: tablet,
          fontWeight: FontWeight.bold,
          color: textColor,
        );
      case DeviceType.desktop:
        return TextStyle(
          fontSize: desktop,
          fontWeight: FontWeight.bold,
          color: textColor,
        );
    }
  }

  /// sign in sub title
  static TextStyle subTitleStyle(
    BuildContext context, {
    double mobile = AppSizes.md,
    double tablet = AppSizes.lg,
    double desktop = AppSizes.lg,
  }) {
    double width = MediaQuery.of(context).size.width; // screen width পাই
    DeviceType deviceType = ScreenSize.getDeviceType(
      width,
    ); // device type নির্ধারণ করি
    Color textColor = getTextColor(context);
    switch (deviceType) {
      case DeviceType.mobile:
        return TextStyle(
          fontSize: mobile,
          fontWeight: FontWeight.w400,
          color: textColor,
        );
      case DeviceType.tablet:
        return TextStyle(
          fontSize: tablet,
          fontWeight: FontWeight.w400,
          color: textColor,
        );
      case DeviceType.desktop:
        return TextStyle(
          fontSize: desktop,
          fontWeight: FontWeight.w400,
          color: textColor,
        );
    }
  }

  /// forget password
  static TextStyle forgetPasswordStyle(
    BuildContext context, {
    double mobile = AppSizes.fontSm,
    double tablet = AppSizes.fontSizeMd,
    double desktop = AppSizes.fontSizeLg,
        Color? color
  }) {
    double width = MediaQuery.of(context).size.width; // screen width পাই
    DeviceType deviceType = ScreenSize.getDeviceType(width,); // device type নির্ধারণ করি
    Color textColor = color ?? getTextColor(context);
    switch (deviceType) {
      case DeviceType.mobile:
        return TextStyle(
          fontSize: mobile,
          fontWeight: FontWeight.w400,
          color: textColor,
        );
      case DeviceType.tablet:
        return TextStyle(
          fontSize: tablet,
          fontWeight: FontWeight.w400,
          color: textColor,
        );
      case DeviceType.desktop:
        return TextStyle(
          fontSize: desktop,
          fontWeight: FontWeight.w400,
          color: textColor,
        );
    }
  }

  ///verify email subtitle
  static TextStyle verifyEmailSubTitleStyle(
      BuildContext context, {
        double mobile = AppSizes.md,
        double tablet = AppSizes.lg,
        double desktop = AppSizes.lg,
        Color?color
      }) {
    double width = MediaQuery.of(context).size.width;
    Color textColor = color ?? getTextColor(context);
    DeviceType deviceType = ScreenSize.getDeviceType(
      width,
    ); // device type নির্ধারণ করি

    switch (deviceType) {
      case DeviceType.mobile:
        return TextStyle(
          fontSize: mobile,
          fontWeight: FontWeight.w400,
          color: textColor,
        );
      case DeviceType.tablet:
        return TextStyle(
          fontSize: tablet,
          fontWeight: FontWeight.w400,
          color: textColor,
        );
      case DeviceType.desktop:
        return TextStyle(
          fontSize: desktop,
          fontWeight: FontWeight.w400,
          color: textColor,
        );
    }
  }


  ///sign up title
  static TextStyle signUpTitleStyle(
      BuildContext context, {
        double mobile = AppSizes.lg,
        double tablet = AppSizes.xl,
        double desktop = AppSizes.xl,
      }) {
    double width = MediaQuery.of(context).size.width; // screen width পাই
    DeviceType deviceType = ScreenSize.getDeviceType(
      width,
    ); // device type নির্ধারণ করি

    Color textColor = getTextColor(context);

    switch (deviceType) {
      case DeviceType.mobile:
        return TextStyle(
          fontSize: mobile,
          fontWeight: FontWeight.bold,
          color: textColor,
        );
      case DeviceType.tablet:
        return TextStyle(
          fontSize: tablet,
          fontWeight: FontWeight.bold,
          color: textColor,
        );
      case DeviceType.desktop:
        return TextStyle(
          fontSize: desktop,
          fontWeight: FontWeight.bold,
          color: textColor,
        );
    }
  }

/*
///verify email title
  static TextStyle verifyEmailTitleStyle(
      BuildContext context, {
        double mobile = AppSizes.lg,
        double tablet = AppSizes.xl,
        double desktop = AppSizes.xl,
      }) {
    double width = MediaQuery.of(context).size.width; // screen width পাই
    DeviceType deviceType = ScreenSize.getDeviceType(
      width,
    ); // device type নির্ধারণ করি

    Color textColor = getTextColor(context);

    switch (deviceType) {
      case DeviceType.mobile:
        return TextStyle(
          fontSize: mobile,
          fontWeight: FontWeight.bold,
          color: textColor,
        );
      case DeviceType.tablet:
        return TextStyle(
          fontSize: tablet,
          fontWeight: FontWeight.bold,
          color: textColor,
        );
      case DeviceType.desktop:
        return TextStyle(
          fontSize: desktop,
          fontWeight: FontWeight.bold,
          color: textColor,
        );
    }
  }

  ///forget pass title
  static TextStyle forgetPasswordTitleStyle(
      BuildContext context, {
        double mobile = AppSizes.lg,
        double tablet = AppSizes.xl,
        double desktop = AppSizes.xl,
      }) {
    double width = MediaQuery.of(context).size.width; // screen width পাই
    DeviceType deviceType = ScreenSize.getDeviceType(
      width,
    ); // device type নির্ধারণ করি

    Color textColor = getTextColor(context);

    switch (deviceType) {
      case DeviceType.mobile:
        return TextStyle(
          fontSize: mobile,
          fontWeight: FontWeight.bold,
          color: textColor,
        );
      case DeviceType.tablet:
        return TextStyle(
          fontSize: tablet,
          fontWeight: FontWeight.bold,
          color: textColor,
        );
      case DeviceType.desktop:
        return TextStyle(
          fontSize: desktop,
          fontWeight: FontWeight.bold,
          color: textColor,
        );
    }
  }
  ///forget pass subtitle
  static TextStyle forgetPasswordSubTitleStyle(
      BuildContext context, {
        double mobile = AppSizes.md,
        double tablet = AppSizes.lg,
        double desktop = AppSizes.lg,
      }) {
    double width = MediaQuery.of(context).size.width; // screen width পাই
    DeviceType deviceType = ScreenSize.getDeviceType(
      width,
    ); // device type নির্ধারণ করি
    Color textColor = getTextColor(context);
    switch (deviceType) {
      case DeviceType.mobile:
        return TextStyle(
          fontSize: mobile,
          fontWeight: FontWeight.w400,
          color: textColor,
        );
      case DeviceType.tablet:
        return TextStyle(
          fontSize: tablet,
          fontWeight: FontWeight.w400,
          color: textColor,
        );
      case DeviceType.desktop:
        return TextStyle(
          fontSize: desktop,
          fontWeight: FontWeight.w400,
          color: textColor,
        );
    }
  }
*/




  static  TextStyle buttonTextStyle = const TextStyle(
      color: AppColors.white,
      fontSize: 20,
      fontWeight: FontWeight.w600
  );
  static  TextStyle forgetTextStyle = const TextStyle(
      color: AppColors.tealColor,
      fontSize: 25,
      fontWeight: FontWeight.w400
  );
  static  TextStyle textFieldStyle = const TextStyle(
      color: AppColors.tealColor,
      fontSize: 18,
      fontWeight: FontWeight.w400
  );
  static  TextStyle commonTextStyle = const TextStyle(
      color: AppColors.tealColor,
      fontSize: 20,
      fontWeight: FontWeight.w600
  );
  static TextStyle  titleText = TextStyle(
      color: AppColors.black,
      fontSize: 20,
      fontWeight: FontWeight.w600
  );
  static TextStyle  subtitleText = TextStyle(
      color: AppColors.black,
      fontSize: 14,
      fontWeight: FontWeight.w300
  );
  static const TextStyle appbarText = TextStyle(
      color: AppColors.white,
      fontSize: 30,
      fontWeight: FontWeight.w600
  );
  static TextStyle largeText = TextStyle(
      color: AppColors.black,
      fontSize: 22,
      fontWeight: FontWeight.w600
  );
  static  TextStyle smallText = TextStyle(
      color: AppColors.black,
      fontSize: 14,
      fontWeight: FontWeight.w600
  );
  static TextStyle classContainerText = TextStyle(
      color: AppColors.black,
      fontSize: 18,
      fontWeight: FontWeight.w600
  );
  static TextStyle smallTextOne = TextStyle(
      color: AppColors.black,
      fontSize: 12,
      fontWeight: FontWeight.w400
  );

  static TextStyle smallTextTwo = TextStyle(
      color: AppColors.black,
      fontSize: 12,
      fontWeight: FontWeight.w400
  );


  ///head line
  static TextStyle headlineStyle(
      BuildContext context, {
        double mobile = AppSizes.lg,
        double tablet = AppSizes.xl,
        double desktop = AppSizes.xl,
      }) {
    double width = MediaQuery.of(context).size.width; // screen width পাই
    DeviceType deviceType = ScreenSize.getDeviceType(
      width,
    ); // device type নির্ধারণ করি

    Color textColor = getTextColor(context);

    switch (deviceType) {
      case DeviceType.mobile:
        return TextStyle(
          fontSize: mobile,
          fontWeight: FontWeight.bold,
          color: textColor,
          overflow: TextOverflow.ellipsis
        );
      case DeviceType.tablet:
        return TextStyle(
          fontSize: tablet,
          fontWeight: FontWeight.bold,
          color: textColor,
            overflow: TextOverflow.ellipsis,

        );
      case DeviceType.desktop:
        return TextStyle(
          fontSize: desktop,
          fontWeight: FontWeight.bold,
          color: textColor,
            overflow: TextOverflow.ellipsis
        );
    }
  }











}
