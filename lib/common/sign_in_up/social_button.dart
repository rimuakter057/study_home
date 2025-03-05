import 'package:flutter/material.dart';
import 'package:study_home/presentation/utils/constants/color.dart';
import 'package:study_home/presentation/utils/constants/image_strings.dart';
import 'package:study_home/presentation/utils/constants/size/sizes.dart';
import 'package:study_home/presentation/utils/helper/helper_function.dart';

class SocialButton extends StatelessWidget {
  const SocialButton({
    super.key,

  });


  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunction.isDarkMode();
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: dark ? AppColors.darkGrey : AppColors.grey,),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(onPressed: (){},
              icon: Image(
                  height: AppSizes.iconMd,
                  width: AppSizes.iconMd,
                  image: AssetImage(AppImages.google))),
        ),
        SizedBox(width:AppSizes.spaceBtwItems ,),
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: dark ? AppColors.darkGrey : AppColors.grey,),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(onPressed: (){},
              icon: Image(
                  height: AppSizes.iconMd,
                  width: AppSizes.iconMd,
                  image: AssetImage(AppImages.facebook),),),
        ),
      ],
    );
  }
}