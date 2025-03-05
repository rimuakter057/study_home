import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:study_home/presentation/ui/screen/auth_screen/forget_password_screen/forget_password_screen.dart';
import 'package:study_home/presentation/ui/screen/auth_screen/sign_up_screen/sign_up_screen.dart';
import 'package:study_home/presentation/utils/constants/app_texts.dart';
import 'package:study_home/presentation/utils/constants/color.dart';
import 'package:study_home/presentation/utils/constants/size/sizes.dart';
import 'package:study_home/presentation/utils/constants/size/text_styles.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({
    super.key,
    required this.gap,
  });

  final Widget gap;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 32),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.email),
                labelText: AppTexts.email,
              ),
            ),
            gap,
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.password),
                labelText: AppTexts.password,
                suffixIcon: Icon(Icons.remove_red_eye_outlined),
              ),
            ),
            gap,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
              Text(AppTexts.remember,style:AppTextStyles.forgetPasswordStyle(context) ),
                  ],
                ),
                TextButton(
                  onPressed: () {
                    Get.to(ForgetPassword());
                  },
                  child:Text(AppTexts.forgetPassword,style:AppTextStyles.forgetPasswordStyle(context,color: AppColors.blue) ),
                ),
              ],
            ),
            SizedBox(height: AppSizes.spaceBtwSections,),
            // sign in button



          ],
        ),
      ),
    );
  }
}