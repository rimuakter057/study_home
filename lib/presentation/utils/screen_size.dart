enum DeviceType {mobile,tablet,desktop}

class ScreenSize{
  static double mobileSize = 600.0;
  static double tabletSize = 1024.0;
  static double desktopSize = 1025.0;
  static DeviceType getDeviceType(double width){
    if(width<=ScreenSize.mobileSize){
      return DeviceType.mobile;
    }else if(width<=ScreenSize.tabletSize && width>ScreenSize.mobileSize){
      return DeviceType.tablet;
    }else{
      return DeviceType.desktop;
    }
  }
}