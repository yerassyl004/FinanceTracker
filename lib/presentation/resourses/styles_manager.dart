import 'package:finance_app/presentation/resourses/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'font_manager.dart';

class AppTextStyle {

  static TextStyle body14Medium() => TextStyle(
     color: ColorManager.black,
      fontSize: 14.sp,
      fontWeight: FontWeight.w500,
  );

  static TextStyle bold14() => TextStyle(
     color: ColorManager.black,
      fontSize: 14.sp,
      fontWeight: FontWeight.w700,
  );

  static TextStyle body15Medium() => TextStyle(
     color: ColorManager.black,
      fontSize: 15.sp,
      fontWeight: FontWeight.w500,
  );

  static TextStyle body16Regular() => TextStyle(
     color: ColorManager.black,
      fontSize: 16.sp,
      fontWeight: FontWeight.w400,
  );

  static TextStyle body16Medium() => TextStyle(
     color: ColorManager.black,
      fontSize: 16.sp,
      fontWeight: FontWeight.w500,
  );

  static TextStyle bold16() => TextStyle(
     color: ColorManager.black,
      fontSize: 16.sp,
      fontWeight: FontWeight.w700,
  );

  static TextStyle body18Regular() => TextStyle(
     color: ColorManager.black,
      fontSize: 18.sp,
      fontWeight: FontWeight.w400,
  );

  static TextStyle body18Medium() => TextStyle(
     color: ColorManager.black,
      fontSize: 18.sp,
      fontWeight: FontWeight.w500,
  );

  static TextStyle body20Medium() => TextStyle(
     color: ColorManager.black,
      fontSize: 20.sp,
      fontWeight: FontWeight.w500,
  );

  static TextStyle bold20() => TextStyle(
     color: ColorManager.black,
      fontSize: 20.sp,
      fontWeight: FontWeight.w700,
  );

  static TextStyle body22Medium() => TextStyle(
     color: ColorManager.black,
      fontSize: 22.sp,
      fontWeight: FontWeight.w500,
  );

  static TextStyle bold22() => TextStyle(
     color: ColorManager.black,
      fontSize: 22.sp,
      fontWeight: FontWeight.w700,
  );

  static TextStyle bold24() => TextStyle(
     color: ColorManager.black,
      fontSize: 24.sp,
      fontWeight: FontWeight.w700,
  );

  static TextStyle bold30() => TextStyle(
     color: ColorManager.black,
      fontSize: 30.sp,
      fontWeight: FontWeight.w700,
  );
}

TextStyle _getTextStyle(
    double fontSize, String fontFamily, FontWeight fontWeight, Color color) {
  return TextStyle(
      fontSize: fontSize,
      fontFamily: fontFamily,
      color: color,
      fontWeight: fontWeight);
}

// regular style

TextStyle getRegularStyle(
    {double fontSize = FontSize.s12, required Color color}) {
  return _getTextStyle(
      fontSize, FontConstants.fontFamily, FontWeightManager.regular, color);
}
// light text style

TextStyle getLightStyle(
    {double fontSize = FontSize.s12, required Color color}) {
  return _getTextStyle(
      fontSize, FontConstants.fontFamily, FontWeightManager.light, color);
}
// bold text style

TextStyle getBoldStyle(
    {double fontSize = FontSize.s12, required Color color}) {
  return _getTextStyle(
      fontSize, FontConstants.fontFamily, FontWeightManager.bold, color);
}

// semi bold text style

TextStyle getSemiBoldStyle(
    {double fontSize = FontSize.s12, required Color color}) {
  return _getTextStyle(
      fontSize, FontConstants.fontFamily, FontWeightManager.semiBold, color);
}


// medium text style

TextStyle getMediumStyle(
    {double fontSize = FontSize.s12, required Color color}) {
  return _getTextStyle(
      fontSize, FontConstants.fontFamily, FontWeightManager.medium, color);
}










