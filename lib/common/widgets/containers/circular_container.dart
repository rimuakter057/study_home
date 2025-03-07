import 'package:flutter/material.dart';
import 'package:study_home/presentation/utils/constants/color.dart';

class CircularContainer extends StatelessWidget {
  const CircularContainer({
    super.key,
    this.child,
    this.width =400,
    this.height=400,
    this.padding =0,
    this.radius = 400,
    this.backgroundColor = AppColors.white,
  });
  final double? width;
  final double? height;
  final double padding;
  final double radius;
  final Widget? child;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(radius),
        color: backgroundColor,
      ),

      child: child,
    );
  }
}