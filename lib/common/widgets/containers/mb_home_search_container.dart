import 'package:flutter/material.dart';
import 'package:study_home/presentation/utils/constants/color.dart';
import 'package:study_home/presentation/utils/constants/size/sizes.dart';
import 'package:study_home/presentation/utils/devices/device_utils.dart';
import 'package:study_home/presentation/utils/helper/helper_function.dart';


class SearchContainer extends StatelessWidget {
  const SearchContainer({
    super.key,
    required this.text,
    this.icon =Icons.search,
    this.showBackground = true,
    this.showBorder =true,
  });

  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunction.isDarkMode(context);
    return Container(
      width: AppDeviceUtils.getScreenWidth(context),
      padding: EdgeInsets.all(AppSizes.md),
      decoration: BoxDecoration(
        color:
        showBackground
            ? dark
            ? AppColors.dark
            : AppColors.light
            : Colors.transparent,
        borderRadius: BorderRadius.circular(AppSizes.cardRadiusLg),
        border: showBorder ? Border.all(color: AppColors.grey) : null,
      ),
      child: Row(
        children: [
          Icon(icon, color: AppColors.darkerGrey),
          SizedBox(width: AppSizes.spaceBtwItems),
          Text(text, style: Theme.of(context).textTheme.bodyMedium),
        ],
      ),
    );
  }
}