import 'package:flutter/material.dart';
import 'package:seventeenth/core/utils/enums.dart';
import 'package:seventeenth/core/utils/responseveVars.dart';

class Functions {
  void mediaQuery(BuildContext context) {
  hightDevice = MediaQuery.of(context).size.height;
  widthDevice = MediaQuery.of(context).size.width;
  eariaDevice = hightDevice + widthDevice;
  if (widthDevice >= 750) {
    hightImelator = hightTap;
    widthImelator = widthTap;
    hightRisho = hightTap / hightMobile;
    widthRisho = widthTap / widthMobile;
    eariaRisho = (hightTap + widthTap) / (hightMobile + widthMobile);
  } else {
    hightImelator = hightMobile;
    widthImelator = widthMobile;
    hightRisho = 1;
    widthRisho = 1;
    eariaRisho = 1;
  }
  eariaImelator = hightImelator + widthImelator;
}

double responsive(ResponsiveTypeEnum responsiveType, double responsiveNumber) {
  if (responsiveType == ResponsiveTypeEnum.hight) {
    responsiveNumber =
        responsiveNumber * hightRisho / hightImelator * hightDevice;
  } else if (responsiveType == ResponsiveTypeEnum.width) {
    responsiveNumber =
        responsiveNumber * widthRisho / widthImelator * widthDevice;
  } else {
    responsiveNumber =
        responsiveNumber * eariaRisho / eariaImelator * eariaDevice;
  }
  return responsiveNumber;
}
}
