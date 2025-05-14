import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:study_home/presentation/utils/constants/size/sizes.dart';
import 'package:study_home/presentation/utils/devices/device_utils.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    this.title,
      this.showBackArrow =false,
    this.leadingIcon,
    this.actions,
    this.onLeadingPressed,
  });

  final Widget? title;
  final bool showBackArrow;
  final IconData? leadingIcon;
  final List<Widget>? actions;
  final VoidCallback? onLeadingPressed;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
    leading: showBackArrow?
    IconButton(onPressed: (){
      Get.back();
    }, icon: Icon(Icons.arrow_back)):
         leadingIcon!=null? IconButton(onPressed:onLeadingPressed, icon: Icon(leadingIcon)):null,

         title: title,
      actions: actions,
    );
  }

  Size get preferredSize => Size.fromHeight(AppDeviceUtils.getAppBarHeight());
}
