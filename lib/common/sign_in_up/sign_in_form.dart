import 'package:flutter/material.dart';
import 'package:study_home/presentation/utils/constants/app_texts.dart';
import 'package:study_home/presentation/utils/constants/size/sizes.dart';

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
                    Text("remember me"),
                  ],
                ),
                TextButton(
                  onPressed: () {},
                  child: Text("forget password"),
                ),
              ],
            ),
            SizedBox(height: AppSizes.spaceBtwItems),
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
            /// divider

          ],
        ),
      ),
    );
  }
}