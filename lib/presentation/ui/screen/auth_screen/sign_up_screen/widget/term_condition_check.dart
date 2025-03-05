import 'package:flutter/material.dart';
import 'package:study_home/presentation/utils/constants/app_texts.dart';
import 'package:study_home/presentation/utils/constants/color.dart';
import 'package:study_home/presentation/utils/constants/size/sizes.dart';
import 'package:study_home/presentation/utils/helper/helper_function.dart';

class TermConditionCheck extends StatelessWidget {
  const TermConditionCheck({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunction.isDarkMode();
    return Row(

      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            SizedBox(
                height: 24,
                width: 24,
                child: Checkbox(value: true, onChanged: (value) {})),
            SizedBox(width: AppSizes.spaceBtwItems,),
             Text.rich(TextSpan(
                  children: [
                    TextSpan(text: '${AppTexts.iAgreeTo} ',style: Theme.of(context).textTheme.bodySmall!.copyWith(
                     fontSize: 10
                    ),
                    ),
                    TextSpan(text: '${AppTexts.privacyPolicy} ',style: Theme.of(context).textTheme.bodyMedium!.apply(
                        color: dark?AppColors.white:AppColors.primaryColor
                    )),
                    TextSpan(text: '${AppTexts.and} ',style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontSize: 10
                    ),),
                    TextSpan(text: '${AppTexts.termsOfUse} ',style: Theme.of(context).textTheme.bodyMedium!.apply(
                        color: dark?AppColors.white:AppColors.primaryColor
                    )),
                  ]
              )
            ),
          ],
        ),
      ],
    );
  }
}