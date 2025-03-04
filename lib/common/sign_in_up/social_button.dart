import 'package:flutter/material.dart';
import 'package:study_home/presentation/utils/constants/color.dart';
import 'package:study_home/presentation/utils/constants/size/sizes.dart';

class SocialButton extends StatelessWidget {
  const SocialButton({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
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
                  image: AssetImage("assets/icons/google.png"))),
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
                  image: AssetImage("assets/icons/facebook.png"))),
        ),
      ],);
  }
}