import 'package:flutter/material.dart';
import 'package:open_Education/constant/appColors.dart';
import 'package:open_Education/constant/textStyles.dart';
import 'package:sizer/sizer.dart';

class CustomElevatedButton extends StatelessWidget {
  CustomElevatedButton({
    super.key,
    required this.titlebutton,
    required this.onPressed,
      this.borderColor = AppColors.purple ,
    this.background = AppColors.purple,
    this.colorText = Colors.white,
    this.width = 100,
    this.hight = 6.5,
  });
  final String titlebutton;
  final Function()? onPressed;
  final Color  borderColor;
  final Color? background;
  final double width;
  final double hight;
  final colorText;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          minimumSize: Size(width.w, hight.h),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4.w),
              side:   BorderSide(color: borderColor)),
          backgroundColor: background?.withOpacity(0.95)),
      onPressed: onPressed,
      child: Text(
        titlebutton,
        style: AppTextStyles.buttonAuthTextSyle.copyWith(color: colorText),
      ),
    );
  }
}
