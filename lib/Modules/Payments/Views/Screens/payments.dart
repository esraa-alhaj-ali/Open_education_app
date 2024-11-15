 
import 'package:flutter/material.dart';
import 'package:open_Education/Localization/AppLocalization.dart';
import 'package:open_Education/Modules/Widgets/app_scaffolds.dart';
import 'package:open_Education/Modules/Widgets/custom_table.dart';
import 'package:open_Education/constant/textStyles.dart';
import 'package:open_Education/model/degree_statistics.dart';
import 'package:sizer/sizer.dart';

class Payments extends StatefulWidget {
  @override
  State<Payments> createState() => _PaymentsState();
}

class _PaymentsState extends State<Payments> {
 
  List<DegreeStatistic>? degrees;
  @override
  void initState() {
    // TODO: implement initState
    degrees = DegreeStatistic.generate();
  }
   @override
  Widget build(BuildContext context) {
    return AppScaffolds.pagesScaffold(
        context: context,
        appbarTitle: "Payments".tr(context),
        body: Container(
          margin: EdgeInsets.symmetric(
            horizontal: 4.w,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(width: 0.0, height: 2.h),
                Text('Swipe_right and left'.tr(context),style: AppTextStyles.titlesMeduim,),

                Container(
                  margin: EdgeInsets.symmetric(horizontal:1.w,vertical:3.h),
                  child: SingleChildScrollView(
                    scrollDirection :Axis.horizontal,
                    child: Container(
                      margin: EdgeInsets.all(1.w),
                      child: CustomTable(
                         columnWidths: [
                           15.w,30.w,20.w,30.w,15.w
                         ],
                        header:RowData([
                        "pay_name".tr(context),
                        "pay_number".tr(context),
                        "pay_date".tr(context),
                        "pay_state".tr(context)
                      ], [
                        SizedBox()
                      ]),
                        rows: degrees
                       !.map((e) => RowData(
                                            [e.id, e.coursename, e.degree, e.result],
                                            [
                                            InkWell(
                                                onTap: (){
                                                  // print(true);
                                                },
                                                child: Text("fee".tr(context),style: AppTextStyles.titlesMeduimTable,))
                                            ],
                                          ))
                       .toList(),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
