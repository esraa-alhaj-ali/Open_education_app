import 'package:flutter/material.dart';
import 'package:open_Education/Localization/AppLocalization.dart';
import 'package:open_Education/Modules/Schedules/View/Widget/table_row.dart';
import 'package:open_Education/constant/Images-Routes.dart';
import 'package:open_Education/constant/appColors.dart';
import 'package:open_Education/constant/box_shadow.dart';
import 'package:open_Education/constant/textStyles.dart';
import 'package:open_Education/Modules/Widgets/app_scaffolds.dart';
 import 'package:open_Education/Modules/Schedules/View/Widget/schedule__details__text.dart';
import 'package:sizer/sizer.dart';

class ShowScheduleDetails extends StatelessWidget {
  const ShowScheduleDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var orientation = MediaQuery.of(context).orientation;
    return AppScaffolds.pagesScaffold(
        appbarTitle: "Open_education_schedules".tr(context),
        context: context,
        body: Column(
          children: [
            Expanded(
                child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 4.w),
              child: ListView(
                children: [
                  SizedBox(width: 0.0, height: 2.5.h),
                  Container(
                    margin: EdgeInsets.only(bottom: 1.5.h),
                    decoration: BoxDecoration(
                      boxShadow: boxShadow,
                      borderRadius: BorderRadius.circular(3.w),
                      // color: Colors.grey,
                      image:  DecorationImage(image:  AssetImage( "${Images.rootImages}/temp6.png"),fit: BoxFit.fill)
                    ),
                    height: 35.h,
                    width: orientation == Orientation.portrait ? 100.w : 100.h,
                  ),
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
                  SizedBox(width: 0.0, height: 2.h),
                  Card(
                    color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'varible year', //
                          style: AppTextStyles.titlesMeduimTable,
                        ),
                        Table(
                            border: const TableBorder(
                                verticalInside: BorderSide(color: Colors.black),
                                horizontalInside:
                                    BorderSide(color: AppColors.purple),
                                top: BorderSide(color: AppColors.purple)),
                            children: [
                              buildRow(
                                  context: context,
                                  subjecctName: "subject_Name".tr(
                                    context,
                                  ),
                                  num: -1,
                                  subjectCode: "Subject_Code".tr(context)),
                              ...List.generate(
                                  7,
                                  (index) => buildRow(
                                        context: context,
                                        subjecctName: "date of low   $index",
                                        subjectCode: "55",
                                      ))
                            ]

 
                            ),
                      ],
                    ),
                  )
                ],
              ),
            ))
          ],
        ));
  }
}
