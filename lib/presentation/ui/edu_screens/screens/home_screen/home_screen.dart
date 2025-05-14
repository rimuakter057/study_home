import 'package:flutter/material.dart';
import 'package:study_home/presentation/ui/edu_screens/screens/home_screen/widget/class_card_expansion.dart';
import 'package:study_home/presentation/ui/edu_screens/screens/home_screen/widget/data_card.dart';
import 'package:study_home/presentation/ui/edu_screens/screens/home_screen/widget/select_activity_container.dart';
import 'package:study_home/presentation/ui/edu_screens/screens/home_screen/widget/small_container.dart';

import '../../common/widget/custom_appbar.dart';
import '../../common/widget/custom_card.dart';
import '../../common/widget/custom_divider.dart';
import '../../common/widget/custom_icon.dart';
import '../../common/widget/custom_list_tile.dart';
import '../../common/widget/custom_text.dart';
import '../../utils/asset_path.dart';
import '../../utils/color/app_colors.dart';
import '../../utils/text/app_size.dart';
import '../../utils/text/app_text_en.dart';
import '../../utils/text/app_text_styles.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedActivity = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarEdu(
        title: AppTextEn.dartProgramming,
        icon: Icons.search,
        leading: CustomIcon(icon: Icons.arrow_back,onTap: (){
          Navigator.pop(context);
        },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: AppSize.screenWidth(context),
              height:
                  AppSize.screenHeight(context) /
                  3, // Screen height er 3rd part
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(AssetImagePath.flutterImage),
                  fit: BoxFit.cover, // To cover the container area
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(AppSize.defaultPadding(context)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ///first row container
                  _buildRowContainer(context),

                  ///your introduction tile
                  _buildIdentity(),

                  Column(
                    children: [
                      /// selected activity Row Container
                      _buildSelectActivity(context),
                      SizedBox(height: AppSize.smallHSpace(context)),
                      CustomDivider(color: AppColor.black),

                      selectedActivity == 0
                          ?
                          /// show curriculum class section
                          Column(
                            children: [
                              CardExpansion(),
                              CardExpansion(titleText: AppTextEn.advanceDart),
                            ],
                          )
                          :
                          /// details information card
                          DataCard(),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  ///your introduction tile
  CustomListTile _buildIdentity() {
    return CustomListTile(
      leading: CircleAvatar(
        radius: 30,
        backgroundImage: AssetImage(AssetImagePath.dartIcon),
      ),
      title: AppTextEn.studentName,
      subtitle: Text(AppTextEn.studentStatus),
    );
  }

  /// selected activity Row Container
  CustomCard _buildSelectActivity(BuildContext context) {
    return CustomCard(
      child: Row(
        children: [
          SelectedAcvContainer(
            isSelected: selectedActivity == 0,
            onTap: () {
              setState(() {
                selectedActivity = 0;
              });
            },
          ),
          SelectedAcvContainer(
            text: AppTextEn.details,
            isSelected: selectedActivity == 1,
            onTap: () {
              setState(() {
                selectedActivity = 1;
              });
            },
          ),
        ],
      ),
    );
  }

  /// build first row container
  Row _buildRowContainer(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SmallContainer(
            text: AppTextEn.beginnerFriendly,
            containerColor: AppColor.amberShade,
            borderRadius: BorderRadius.circular(
              AppSize.borderRadiusLg(context),
            ),
          ),
        ),
        SizedBox(width: AppSize.spaceWTwoItems(context)),
        Expanded(
          child: SmallContainer(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomIcon(
                  icon: Icons.alarm,
                  iconColor: Colors.black,
                  iconSize: AppSize.iconSm(context),
                ),

                Flexible(
                  child: CustomText(
                    text: AppTextEn.courseDuration,
                    textStyle: AppTextStyle.textStyleSm(context),
                  ),
                ),
              ],
            ),
          ),
        ),

        SizedBox(width: AppSize.sideSpace(context)),
      ],
    );
  }
}
