import 'package:flutter/material.dart';
import 'package:open_Education/Localization/AppLocalization.dart';
import 'package:open_Education/Modules/Ordering_System/View/Screen/grade_report.dart';
import 'package:open_Education/Modules/Ordering_System/View/Screen/show_order.dart';
import 'package:open_Education/model/degree_statistics.dart';
import 'package:open_Education/Modules/Widgets/app_scaffolds.dart';
import 'package:open_Education/Modules/Widgets/custom_elevatedButton.dart';
import 'package:open_Education/constant/appColors.dart';
import 'package:open_Education/constant/box_shadow.dart';
import 'package:open_Education/utils/global_functions.dart';
import 'package:sizer/sizer.dart';
import '../../../../constant/textStyles.dart';
import '../../../Widgets/custom_table.dart';

class OrderingSystem extends StatefulWidget {
  @override
  State<OrderingSystem> createState() => _OrderingSystemState();
}

class _OrderingSystemState extends State<OrderingSystem> {
  List<Widget> widgets = [];
  List<DegreeStatistic>? degrees = DegreeStatistic.generate();
  int current = 0;
  @override
  Widget build(BuildContext context) {
    widgets = [First(), Second()];
    return AppScaffolds.pagesScaffold(
        context: context,
        appbarTitle: "Ordering_System".tr(context),
        body: Container(
          margin: EdgeInsets.symmetric(
            horizontal: 4.w,
          ),
          child: Column(
            children: [
              Container(
                height: 10.h,
                margin: EdgeInsets.symmetric(vertical: 2.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CustomElevatedButton(
                      titlebutton: "Your_order".tr(context),
                      onPressed: () {
                        setState(() {
                          current = 1;
                        });
                      },
                      width: 7.w,
                      hight: 0.8.h,
                      background:
                          current == 1 ? AppColors.purple : Colors.white,
                      colorText: current == 1 ? Colors.white : Colors.black,
                    ),
                    CustomElevatedButton(
                        titlebutton: "New_order".tr(context),
                        onPressed: () {
                          setState(() {
                            current = 0;
                          });
                        },
                        width: 7.w,
                        hight: 0.8.h,
                        background:
                            current == 0 ? AppColors.purple : Colors.white,
                        colorText: current == 0 ? Colors.white : Colors.black)
                  ],
                ),
              ),
              Expanded(child: SingleChildScrollView(child: widgets[current]))
            ],
          ),
        ));
  }

  Widget First() {
    return Column(
      children: [
        SizedBox(height: 1.h),
        Container(
            margin: EdgeInsets.symmetric(vertical: 1.h),
            alignment: AlignmentDirectional.topStart,
            child: Text(
              "orders_name".tr(context),
              style: AppTextStyles.titlesMeduim,
            )),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.h),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.sp),
              boxShadow: boxShadow),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 3.h),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                InkWell(
                  onTap: () {
                    routingPage(context, GradeReport());
                  },
                  child: Text('grade_report'.tr(context),
                      textAlign: TextAlign.center,
                      style: AppTextStyles.titlesMeduim
                          .copyWith(decoration: TextDecoration.underline)),
                ),
                Divider(height: 4.h),
                InkWell(
                  onTap: () {
                    routingPage(context, GradeReport());
                  },
                  child: Text('Registration_Document'.tr(context),
                      textAlign: TextAlign.center,
                      style: AppTextStyles.titlesMeduim
                          .copyWith(decoration: TextDecoration.underline)),
                ),
                Divider(height: 4.h),
                InkWell(
                  onTap: () {
                    routingPage(context, GradeReport());
                  },
                  child: Text('Registration_Payment'.tr(context),
                      textAlign: TextAlign.center,
                      style: AppTextStyles.titlesMeduim
                          .copyWith(decoration: TextDecoration.underline)),
                ),
                Divider(height: 4.h),
                InkWell(
                  onTap: () {
                    routingPage(context, GradeReport());
                  },
                  child: Text('Certificate_Graduation'.tr(context),
                      textAlign: TextAlign.center,
                      style: AppTextStyles.titlesMeduim
                          .copyWith(decoration: TextDecoration.underline)),
                ),
                Divider(height: 4.h),
                InkWell(
                  onTap: () {
                    routingPage(context, GradeReport());
                  },
                  child: Text('University_Life'.tr(context),
                      textAlign: TextAlign.center,
                      style: AppTextStyles.titlesMeduim
                          .copyWith(decoration: TextDecoration.underline)),
                ),
                Divider(height: 4.h),
                InkWell(
                  onTap: () {
                    routingPage(context, GradeReport());
                  },
                  child: Text('Transcript'.tr(context),
                      textAlign: TextAlign.center,
                      style: AppTextStyles.titlesMeduim
                          .copyWith(decoration: TextDecoration.underline)),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget Second() {
    // نضيف مرر يمينا ويسارا
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        margin: EdgeInsets.all(1.w),
        child: CustomTable(
          columnWidths: [
            25.w,
            20.w,
            30.w,
            25.w,
          ],
          header: RowData([
            "State_order".tr(context),
            "Number".tr(context),
            "Date".tr(context),
            "Type_of Request".tr(context)
          ], [
            // SizedBox()
          ]),
          rows: degrees!
              .map((e) => RowData(
                    [e.id, e.coursename, e.degree],
                    [
                      InkWell(
                          onTap: () {
                            routingPage(context, ShowOrder());
                          },
                          child: Text(
                            "Type".tr(context),
                            style: AppTextStyles.titlesMeduimTable,
                          ))
                    ],
                  ))
              .toList(),
        ),
      ),
    );
    // decoration: BoxDecoration(
    //     boxShadow: boxShadow,
    //     color: AppColors.white,
    //     borderRadius: BorderRadius.circular(1.w)),
    // child: SingleChildScrollView(
    //   scrollDirection: Axis.horizontal,
    //   child: DataTable(
    //     columnSpacing: 8.w,
    //     // horizontalMargin: 4.w,
    //     columns: [
    //       DataColumn(label: Text("State_order".tr(context),)),
    //       DataColumn(label: Text("Number".tr(context),)),
    //       DataColumn(label: Text("Date".tr(context),)),
    //       DataColumn(label: Text("Type".tr(context),)),
    //     ],
    //     rows: [
    //       DataRow(cells: [
    //         DataCell(Text('cell1',style: AppTextStyles.titlesMeduimTable.copyWith(color: Colors.black))),
    //         DataCell(Text('cell2',style: AppTextStyles.titlesMeduimTable.copyWith(color: Colors.black),)),
    //         DataCell(Text('cell3',style:AppTextStyles.titlesMeduimTable.copyWith(color: Colors.black),)),
    //         DataCell(
    //             InkWell(
    //             onTap: (){
    //               routingPage(context, ShowOrder());
    //             },
    //             child: Text('cell4',style:AppTextStyles.titlesMeduimTable,))),
    //       ]),
    //
    //     ],
    //   ),
  }
}
