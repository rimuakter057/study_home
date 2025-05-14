import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:study_home/presentation/utils/constants/color.dart';
import 'package:study_home/presentation/utils/helper/helper_function.dart';

import '../../edu_screens/screens/home_screen/home_screen.dart';
import '../../edu_screens/screens/main_screen/main_screen.dart';
import 'home_screen/home_screen.dart';
// Your color constants
class MainNavScreen extends StatelessWidget {
  const MainNavScreen({super.key});
static const routeName = "/main-nav-screen";
  @override
  Widget build(BuildContext context) {

    final controller = Get.put(NavigationController());
    final dark = AppHelperFunction.isDarkMode(context);

    return Scaffold(
        bottomNavigationBar: Obx(
              ()=>NavigationBar(
            height: 80,
            elevation: 0,
            backgroundColor: dark?AppColors.black:AppColors.white,
            indicatorColor: dark?AppColors.black.withAlpha(26):AppColors.primaryColor,
            selectedIndex: controller.selectedIndex.value,
            onDestinationSelected: (index)=>controller.selectedIndex.value = index,
            destinations: [
              NavigationDestination(icon:Icon(Icons.home) , label: "home"),
              NavigationDestination(icon:Icon(Icons.class_outlined) , label: "class"),
              NavigationDestination(icon:Icon(Icons.book_online_outlined) , label: "curriculum"),
              NavigationDestination(icon:Icon(Icons.person) , label: "person"),],
          ),
        ),
     body:Obx(() => Center(child: controller.screen[controller.selectedIndex.value])),
    );
  }
}

class NavigationController extends GetxController{
  final RxInt selectedIndex=1.obs;

  final screen =[
    MainScreen(),
    MobileHomeScreen(),
    HomeScreen(),
    Text("person"),
  ];
}  