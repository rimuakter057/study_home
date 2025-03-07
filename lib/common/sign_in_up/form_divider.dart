import 'package:flutter/material.dart';
import 'package:study_home/presentation/utils/constants/color.dart';
import 'package:study_home/presentation/utils/constants/size/sizes.dart';
import 'package:study_home/presentation/utils/helper/helper_function.dart';

class FormDivider extends StatelessWidget {
  const FormDivider({
    super.key,
required this.text,
  });
  final String text;


  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunction.isDarkMode(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Divider(
            color: dark ? AppColors.darkGrey : AppColors.grey,
            thickness: 0.8,
            indent: 60,
            endIndent: 5,
          ),
        ),
        Text(text,style:Theme.of(context).textTheme.labelMedium,),
        Flexible(
          child: Divider(
            color: dark ? AppColors.darkGrey : AppColors.grey,
            thickness: 0.8,
            indent: 5,
            endIndent: 60,
          ),
        ),
        SizedBox(height: AppSizes.spaceBtwSections,),
      ],
    );
  }
}