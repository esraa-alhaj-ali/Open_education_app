import 'package:flutter/material.dart';
import 'package:open_Education/Localization/AppLocalization.dart';
import 'package:open_Education/constant/Images-Routes.dart';
import 'package:open_Education/constant/appColors.dart';
import 'package:open_Education/constant/textStyles.dart';
import 'package:open_Education/Modules/Widgets/app_scaffolds.dart';

import 'package:sizer/sizer.dart';

class TeacherDetails extends StatelessWidget {
  const TeacherDetails({Key? key, required this.subjectName}) : super(key: key);
  final String subjectName;
  @override
  Widget build(BuildContext context) {
    return AppScaffolds.pagesScaffold(
        appbarTitle: subjectName,
        context: context,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 4.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                  child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(width: 0.0, height: 2.5.h),
                    Container(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(4.w),
                        child: Image.asset(
                          "${Images.rootImages}/tem9.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                      margin: EdgeInsets.only(bottom: 1.5.h),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3.w),
                        color: Colors.grey,
                      ),
                      height: 20.h,
                      width: 75.w,
                    ),
                    Text(
                      'Dr. Prof. Safaa Otani',
                      style: AppTextStyles.titlesMeduim,
                    ),
                    Text(
                      'Professor of Criminal Law',
                      style: AppTextStyles.titlesMeduimTable,
                    ),
                    SizedBox(width: 0.0, height: 1.h),
                    Text(
                      "The open education system is considered an integral part of The open education system is considered an integral part of The open education system is considered an integral part of The open education system is considered an integral part of The open education system is considered an integral part of the higher education system, and it is a blessing from Mr. President to the children of Syria, so that they can continue their educational attainment, whether they are elderly, or whose average in the secondary certificate  sident to the children of Syria, so that they can continue their educational attainment, whether they are elderly, or whose average in the secondary certificate  .",
                      style: AppTextStyles.explanatoryText,
                    ),
                    Text(
                      "The open education system is considered an integral part of The open education system is considered an integral part of The open education system is considered an integral part of The open education system is considered an integral part of The open education system is considered an integral part of the higher education system, and it is a blessing from Mr. President to the children of Syria, so that they can continue their educational attainment, whether they are elderly, or whose average in the secondary certificate  sident to the children of Syria, so that they can continue their educational attainment, whether they are elderly, or whose average in the secondary certificate  .",
                      style: AppTextStyles.explanatoryText,
                    ),
                    Text(
                      "The open education system is considered an integral part of The open education system is considered an integral part of The open education system is considered an integral part of The open education system is considered an integral part of The open education system is considered an integral part of the higher education system, and it is a blessing from Mr. President to the children of Syria, so that they can continue their educational attainment, whether they are elderly, or whose average in the secondary certificate  sident to the children of Syria, so that they can continue their educational attainment, whether they are elderly, or whose average in the secondary certificate  .",
                      style: AppTextStyles.explanatoryText,
                    ),
                    SizedBox(width: 0.0, height: 1.h),
                  ],
                ),
              ))
            ],
          ),
        ));
  }
}
