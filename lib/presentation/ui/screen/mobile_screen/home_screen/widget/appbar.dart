import 'package:flutter/material.dart';
import 'package:study_home/presentation/ui/screen/mobile_screen/home_screen/widget/notification_count.dart';
import 'package:study_home/presentation/ui/widget/appbar.dart';
import 'package:study_home/presentation/utils/constants/app_texts.dart';
import 'package:study_home/presentation/utils/constants/color.dart';
import 'package:study_home/presentation/utils/helper/helper_function.dart';

class MbHomeAppbar extends StatelessWidget {
  const MbHomeAppbar({super.key});

  @override
  Widget build(BuildContext context) {

    return CustomAppBar(
      title: Column(
        children: [
          SizedBox(height: 20,),
          Text(
            AppTexts.homeAppbarSubTitle,
            style: Theme.of(
              context,
            ).textTheme.headlineSmall!.apply(color: AppColors.white),
          ),
          Text(
            AppTexts.homeAppbarTitle,
            style: Theme.of(
              context,
            ).textTheme.labelMedium!.apply(color: AppColors.grey),
          ),
        ],
      ),
      actions: [NotificationCount(onPress: () {}, iconColor: AppColors.white)],
    );
  }
}
