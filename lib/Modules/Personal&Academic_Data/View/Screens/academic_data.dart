import 'package:flutter/material.dart';
import 'package:open_Education/Localization/AppLocalization.dart';
import 'package:open_Education/Modules/Widgets/app_scaffolds.dart';
import 'package:open_Education/Modules/Widgets/custom_table.dart';
import 'package:open_Education/constant/textStyles.dart';
import 'package:open_Education/model/degree_statistics.dart';

import 'package:sizer/sizer.dart';

class AcadamicData extends StatefulWidget {
  @override
  State<AcadamicData> createState() => _AcadamicDataState();
}

class _AcadamicDataState extends State<AcadamicData> {
  List<DegreeStatistic>? degrees;

  Widget containerText(String text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("2023/2024",
            style: AppTextStyles.titlesMeduim.copyWith(height: 0.3.h)),
        SizedBox(
          width: 1.w,
        ),
        Text(
          text.tr(context),
          style: AppTextStyles.titlesMeduim.copyWith(height: 0.3.h),
        ),
      ],
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    degrees = DegreeStatistic.generate();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffolds.pagesScaffold(
        appbarTitle: "Academic_Data".tr(context),
        context: context,
        body: Container(
          margin: EdgeInsets.symmetric(
            horizontal: 2.w,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 3.h,
                ),
                containerText("Second_Semester"),
                CustomTable(
                  columnWidths: [10.w, 30.w, 20.w, 30.w],
                  header: RowData([
                    "ID".tr(context),
                    "Course_name".tr(context),
                    "Degree".tr(context),
                    "Result".tr(context)
                  ], []),
                  rows: degrees!
                      .map((e) =>
                          RowData([e.id, e.coursename, e.degree, e.result], []))
                      .toList(),
                ),
                SizedBox(
                  height: 3.h,
                ),
                containerText("First_Semester"),
                CustomTable(
                  columnWidths: [10.w, 30.w, 20.w, 30.w],
                  header: RowData([
                    "ID".tr(context),
                    "Course_name".tr(context),
                    "Degree".tr(context),
                    "Result".tr(context)
                  ], []),
                  rows: degrees!
                      .map((e) =>
                          RowData([e.id, e.coursename, e.degree, e.result], []))
                      .toList(),
                ),
                SizedBox(
                  height: 3.h,
                ),
                containerText("Second_Semester"),
                CustomTable(
                  columnWidths: [10.w, 30.w, 20.w, 30.w],
                  header: RowData([
                    "ID".tr(context),
                    "Course_name".tr(context),
                    "Degree".tr(context),
                    "Result".tr(context)
                  ], []),
                  rows: degrees!
                      .map((e) =>
                          RowData([e.id, e.coursename, e.degree, e.result], []))
                      .toList(),
                ),
                SizedBox(
                  height: 3.h,
                ),
                containerText("First_Semester"),
                CustomTable(
                  columnWidths: [10.w, 30.w, 20.w, 30.w],
                  header: RowData([
                    "ID".tr(context),
                    "Course_name".tr(context),
                    "Degree".tr(context),
                    "Result".tr(context)
                  ], []),
                  rows: degrees!
                      .map((e) =>
                          RowData([e.id, e.coursename, e.degree, e.result], []))
                      .toList(),
                ),
                SizedBox(
                  height: 3.h,
                )
              ],
            ),
          ),
        ));
  }
}
