import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:open_Education/Localization/AppLocalization.dart';
import 'package:open_Education/Modules/Schedules/View/Widget/schedule__details__text.dart';
 import 'package:open_Education/constant/appColors.dart';
import 'package:open_Education/constant/textStyles.dart';
import 'package:open_Education/Modules/Widgets/app_scaffolds.dart';
import 'package:sizer/sizer.dart';

import '../../../Teachers/View/Widget/teacher_card.dart';

class SubjectDetailsScreen extends StatelessWidget {
  const SubjectDetailsScreen({Key? key, required this.subjectName})
      : super(key: key);
  final String subjectName;
  @override
  Widget build(BuildContext context) {
    return AppScaffolds.pagesScaffold(
        appbarTitle: "Open_education_schedules".tr(context),
        context: context,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
                child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 4.w),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(width: 0.0, height: 1.5.h),
                    Text(subjectName),

                    SizedBox(width: 0.0, height: 2.0.h),

                   SceduleDetailsText(
                    title: "Media",
                    descreption:
                        "The open education system is considered an integral part of the higher education system, and it is a blessing from Mr. President to the children of Syria, so that they can continue their educational attainment, whether they are elderly, or whose average in the secondary certificate  .",
                  ),
                  SceduleDetailsText(
                    title: "Media",
                    descreption:
                        "The open education system is considered an integral part of the higher education system, and it is a blessing from Mr. President to the children of Syria, so that they can continue their educational attainment, whether they are elderly, or whose average in the secondary certificate  .",
                  ), 
                    Padding(
                      padding: EdgeInsets.only(top: 2.h, bottom: 1.h),
                      child: Text(
                        "Subject_professors".tr(context),
                        style: AppTextStyles.titlesMeduim  ,
                      ),
                    ),
                    GridView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          childAspectRatio:
                              MediaQuery.of(context).orientation ==
                                      Orientation.portrait
                                  ? 1
                                  : 2,
                          crossAxisCount: 2,
                          crossAxisSpacing: 10.w,
                          mainAxisSpacing: 1.2.h),
                      itemCount: 4,
                      itemBuilder: (context, index) => TeacherCard(subjectName:subjectName,
                        teacherName: "teacher name",
                        ImagePath: "",
                      ),
                    ),
                    SizedBox(width: 0.0, height:1.5.h)
                  ],
                ),
              ),
            ))
          ],
        ));
  }
}
