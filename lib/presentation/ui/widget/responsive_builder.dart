import 'package:flutter/material.dart';
import 'package:study_home/presentation/utils/screen_size/screen_size.dart';

class ResponsiveBuilder extends StatelessWidget {
  const ResponsiveBuilder({super.key, required this.mobile, required this.tablet, required this.desktop});
  final  Widget mobile;
  final Widget tablet;
  final Widget desktop;

  @override
  Widget build(BuildContext context) {
    final size= MediaQuery.sizeOf(context);
    final DeviceType deviceType=ScreenSize.getDeviceType(size.width);
  if(deviceType==DeviceType.mobile){
    return mobile;
  }else if(deviceType==DeviceType.tablet){
    return tablet;
  }else{
    return desktop;
  }
  }
}
