import 'package:flutter/material.dart';
import 'package:study_home/presentation/utils/constants/app_texts.dart';
import 'package:study_home/presentation/utils/constants/size/text_styles.dart';

class SignInHeader extends StatelessWidget {
  const SignInHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          AppTexts.signInTitle,
          style: AppTextStyles.signInTitleStyle(context),
        ),
        Text(
          textAlign: TextAlign.center,
          AppTexts.signInSubTitle,
          style: AppTextStyles.signInSubTitleStyle(context),
        ),
      ],
    );
  }
}