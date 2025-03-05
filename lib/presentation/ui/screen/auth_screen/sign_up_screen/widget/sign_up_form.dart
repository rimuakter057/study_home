import 'package:flutter/material.dart';
import 'package:study_home/presentation/utils/constants/app_texts.dart';
import 'package:study_home/presentation/utils/constants/color.dart';
import 'package:study_home/presentation/utils/constants/size/sizes.dart';
import 'package:study_home/presentation/utils/helper/helper_function.dart';


class SignUpForm extends StatelessWidget {
  const SignUpForm({
    super.key,});

  @override
  Widget build(BuildContext context) {

    final Widget gap = SizedBox(height: AppSizes.spaceBtwInputFields);
    return Form(
      child: Column(
        children: [
          ///user name
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: InputDecoration(
                    labelText: AppTexts.firstName,
                    prefixIcon: Icon(Icons.person_outline),
                  ),
                ),
              ),
              SizedBox(width: AppSizes.spaceBtwInputFields),
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: InputDecoration(
                    labelText: AppTexts.lastName,
                    prefixIcon: Icon(Icons.person_outline),
                  ),
                ),
              ),
            ],
          ),
          gap,
          //user name
          TextFormField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.person_outline),
              labelText: AppTexts.userName,
            ),
          ),
          gap,

          ///email
          TextFormField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.email_outlined),
              labelText: AppTexts.email,
            ),
          ),
          gap,

          ///phone number
          TextFormField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.phone),
              labelText: AppTexts.phoneNo,
            ),
          ),
          gap,

          ///password
          TextFormField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.password),
              labelText: AppTexts.password,
              suffixIcon: Icon(Icons.remove_red_eye_outlined),
            ),
          ),
          gap,



        ],
      ),
    );
  }
}