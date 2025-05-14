import 'package:flutter/material.dart';
import '../../screens/home_screen/widget/small_container.dart';
import '../../utils/color/app_colors.dart';
import '../../utils/text/app_size.dart';
import '../../utils/text/app_text_en.dart';
import '../../utils/text/app_text_styles.dart';
import 'custom_list_tile.dart';
import 'custom_text.dart';

class CustomExpansionTile extends StatelessWidget {
  const CustomExpansionTile({
    super.key,
    this.titleIcon,
    this.titleText,
    this.containerText,
    this.trailingIcon,
    this.titleIconColor,
  });

  final Icon? titleIcon;
  final String? titleText;
  final String? containerText;
  final Icon? trailingIcon;
  final Color? titleIconColor;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          titleIcon ??
              Icon(
                Icons.book,
                size: AppSize.iconSm(context),
                color: titleIconColor ?? AppColor.gradientStartColor,
              ), //
          SizedBox(width: AppSize.smallPadding(context)),
          Expanded(
            child: CustomText(
              text: titleText ?? AppTextEn.introductionTo,
              textStyle: AppTextStyle.textStyleSm(context),
            ),
          ),
          SizedBox(width: AppSize.smallPadding(context)),
          Flexible(
            child: SmallContainer(
              padding: EdgeInsets.all(AppSize.smallPadding(context)),
              text: containerText ?? AppTextEn.lessonsCount,
            ),
          ),
        ],
      ),
      trailing:
          trailingIcon ??
          Icon(
            Icons.arrow_drop_down,
            color: AppColor.gradientStartColor,
            size: AppSize.iconSm(context),
          ), //
      children: [
        Padding(
          padding: EdgeInsets.all(AppSize.smallPadding(context)),
          child: Column(
            children: [
              CustomListTile(
                leading: Icon(Icons.play_circle_outline),
                title: AppTextEn.introduction,
                subtitle: Text(AppTextEn.timeTen),
                trailing: Icon(Icons.lock_open_outlined),
              ),
              CustomListTile(
                leading: Icon(Icons.play_circle_outline),
                title: AppTextEn.variables,
                subtitle: Text(AppTextEn.timeFifteen),
                trailing: Icon(Icons.lock_open_outlined),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
