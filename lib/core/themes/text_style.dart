import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mealtracker/core/themes/colors_manger.dart';

class AppTextStyle {
  static TextStyle mainText(BuildContext context) => TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeight.w400,
    color:ColorsManger.text,
  );
}
