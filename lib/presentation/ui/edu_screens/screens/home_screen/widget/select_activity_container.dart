import 'package:flutter/material.dart';
import 'package:study_home/presentation/ui/edu_screens/screens/home_screen/widget/small_container.dart';

import '../../../common/widget/custom_icon.dart';
import '../../../common/widget/custom_text.dart';
import '../../../utils/color/app_colors.dart';
import '../../../utils/color/gradient_color.dart';
import '../../../utils/text/app_size.dart';
import '../../../utils/text/app_text_en.dart';
import '../../../utils/text/app_text_styles.dart';

class SelectedAcvContainer extends StatelessWidget {
  const SelectedAcvContainer({
    super.key,
    this.icon,
    this.text,
    required this.onTap,
    this.isSelected = false,
  });

  final Icon? icon;
  final String? text;
  final void Function()? onTap;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: SmallContainer(
          borderWidth: 0,
          borderColor: Colors.transparent,
          gradient: isSelected ? AppGradients.primaryGradient : null,
          height: AppSize.containerHeightXMd(context),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              icon ??
                  CustomIcon(
                    icon: Icons.book,
                    iconColor:
                        isSelected
                            ? AppColor.white
                            : AppColor.grey, // Icon color change
                  ),
              CustomText(
                text: text ?? AppTextEn.curriculum,
                textStyle: AppTextStyle.textStyleSm(
                  context,
                  textColor: isSelected ? AppColor.white : AppColor.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
