import 'package:flutter/material.dart';
import 'package:study_home/presentation/ui/edu_screens/screens/main_screen/widget/drawer/profile_widget.dart';

import '../../../../common/widget/Custom_container.dart';
import '../../../../utils/color/app_colors.dart';
import '../../../../utils/color/gradient_color.dart';
import '../../../../utils/text/app_size.dart';
import 'drawer_item.dart';
import 'drawer_item_list.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColor.white,
      child: Column(
        children: [
          /// Header Section with Gradient and Profile
          CustomContainer(
            width: AppSize.drawerContainerWidth(context),
            height: AppSize.drawerContainerHeight(context),
            gradient: AppGradients.primaryGradient,
            bottomLeft: AppSize.borderRadiusMd(context),
            bottomRight: AppSize.borderRadiusMd(context),

            ///drawer header with profile
            child: _buildDrawerHeader(),
          ),

          /// Drawer Menu Items with dynamic padding and font sizes
          _buildItemMenu(),
        ],
      ),
    );
  }

  ///build drawer header
  DrawerHeader _buildDrawerHeader() {
    return DrawerHeader(padding: EdgeInsets.all(0), child: ProfileWidget());
  }

  ///build drawer menu items
  Expanded _buildItemMenu() {
    return Expanded(
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: drawerItems.length,
        itemBuilder: (context, index) {
          /// drawer item custom list tile implement
          return DrawerItem(index: index);
        },
      ),
    );
  }
}
