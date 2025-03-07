import 'package:flutter/material.dart';
import 'package:study_home/presentation/utils/constants/color.dart';
import 'package:study_home/presentation/utils/helper/helper_function.dart';


class NotificationCount extends StatelessWidget {
  const NotificationCount({
    super.key,required this.iconColor,required this.onPress,
  });
final Color iconColor;
final VoidCallback onPress;
  @override
  Widget build(BuildContext context) {

    return Stack(
      children: [
        IconButton(onPressed: onPress, icon: Icon(Icons.notification_add_outlined,color: iconColor,),),
        Positioned(
          right: 0,
          child: Container(width: 18,
            height: 18,
            decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.circular(100)
            ),
            child: Center(child: Text("2",style: Theme.of(context).textTheme.labelLarge!.apply(color: AppColors.white,fontSizeFactor: 0.8),),),
          ),
        ),
      ],
    );
  }
}