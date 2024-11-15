
import 'package:flutter/material.dart';
import 'package:open_Education/Localization/AppLocalization.dart';
import 'package:open_Education/constant/appColors.dart';
import 'package:open_Education/constant/textStyles.dart';
 import 'package:sizer/sizer.dart';

class ViewAllWithTitle extends StatelessWidget {
  const ViewAllWithTitle({
    super.key ,required this.title,required this.onTap
  });
  final String title ; 
   final void Function()?  onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 4.w, bottom: 1.8 .h, right: 5.w,top: 2.h  ),
      child: Row(
        children: [
          Text(
            title,
            style: AppTextStyles.titlesMeduim,
          ),
          const Spacer(),
          InkWell(
            onTap:  onTap,
            child: Text(
              "view_all".tr(context) ,
              style: AppTextStyles.titlesMeduim
                  .copyWith(color: AppColors.purple),
            ),
          ),
        ],
      ),
    );
  }
}