import 'package:flutter/material.dart';
import 'package:open_Education/constant/appColors.dart';
import 'package:sizer/sizer.dart';

class AppTextStyles {
  static final TextStyle buttonAuthTextSyle =
      TextStyle(fontSize: 13.sp, color: AppColors.white );

  static final TextStyle titlesAuthLarge = TextStyle(
    fontSize: 13.sp,
  );

  static final TextStyle titlesMeduim =
      TextStyle(fontSize: 11.sp, fontWeight: FontWeight.w400);

  static final TextStyle secondTitle =
      TextStyle(fontSize: 10.sp, fontWeight: FontWeight.w400);

  static final TextStyle titlesMeduimTable = TextStyle(
      fontSize: 11.sp,
      fontWeight: FontWeight.w500,
      height: 0.3.h,
      color: AppColors.purple);

  static final TextStyle whiteTextForHomeCard = TextStyle(
      color: Colors.white, fontSize: 10.sp, fontWeight: FontWeight.w500);

  static final TextStyle explanatoryText = TextStyle(
      color: Colors.black,
      fontSize: 9.5.sp,
      fontWeight: FontWeight.w300,
      height: 0.18.h);
}
