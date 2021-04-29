import 'package:flutter/material.dart';
import 'package:one_farm/widgets/text_widget.dart';

enum IconType { svg, png }

class IconStyle {
  IconStyle(
      {@required this.icon, this.size, this.position, this.fit, this.iconType});
  String icon;
  int size;
  IconPosition position;
  BoxFit fit;
  IconType iconType;
}

class MyIcon {
  static const loginBackground = "assets/ic_veggies_bg.svg";
  static const decorateHome = "assets/decorate_home.svg";
  static const decoreManualControl = "assets/decorate_manual_control.svg";
  static const icOneFarm = "assets/ic_one_farm.svg";
  static const icUnderVeggiesBackground = "assets/ic_under_veggies_bg.svg";
  static const icAutoControl = "assets/ic_auto_control.svg";
  static const icBrightnessGreen = "assets/ic_brightness_green.svg";
  static const icBrightness = "assets/ic_brightness.svg";
  static const icCo2Green = "assets/ic_co2_green.svg";
  static const icDiary = "assets/ic_diary.svg";
  static const icHome = "assets/ic_home.svg";
  static const icHumidityBlue = "assets/ic_humidity_blue.svg";
  static const icHumidityGreen = "assets/ic_humidity_green.svg";
  static const icProgressOrange = "assets/ic_progress_orange.svg";
  static const icProgressBlue = "assets/ic_progress_blue.svg";
  static const icProgressRed = "assets/ic_progress_red.svg";
  static const icPlants = "assets/ic_plants.svg";
  static const icProfitReport = "assets/ic_profit_report.svg";
  static const icStormGreen = "assets/ic_storm_green.svg";
  static const icTemperatureGreen = "assets/ic_temperature_green.svg";
  static const icTemperatureRed = "assets/ic_temperature_red.svg";
  static const icArea = "assets/ic_area.svg";
  static const icRemoteManual = "assets/ic_remote_manual.svg";
  static const icStatistic = "assets/ic_statistic.svg";
  static const icLeftArrow = "assets/ic_left_arrow.svg";
  static const icLogout = "assets/ic_logout.svg";
  static const icRightArrow = "assets/ic_right_arrow.svg";
  static const icMenu = "assets/ic_menu.svg";
  static const icBell = "assets/ic_bell.svg";
  static const icSignalNotification = "assets/ic_signal_orange_dot.svg";
  static const icCalendar = "assets/ic_calendar.svg";
  static const icEditProfile = "assets/ic_edit_profile.svg";
}
