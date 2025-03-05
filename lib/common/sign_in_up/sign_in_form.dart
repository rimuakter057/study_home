import 'package:flutter/material.dart';
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
                  onPressed: () {},
                  child:Text(AppTexts.forgetPassword,style:AppTextStyles.forgetPasswordStyle(context,color: AppColors.blue) ),
                ),
              ],
            ),
            SizedBox(height: AppSizes.spaceBtwSections,),
            // sign in button
            ElevatedButton(
              onPressed: () {},
              child: Text(AppTexts.signIn),
            ),
            gap,
            //create account button
            OutlinedButton(
              onPressed: () {},
              child: Text(AppTexts.createAccount),
            ),
            SizedBox(height: AppSizes.spaceBtwSections,),


          ],
        ),
      ),
    );
  }
}