import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:open_Education/Localization/AppLocalization.dart';
import 'package:open_Education/Modules/Supervisor/View/Screen/input_check_list.dart';
import 'package:open_Education/Modules/Supervisor/View/Widget/QR_Reader.dart';
import 'package:open_Education/Modules/Widgets/app_scaffolds.dart';
import 'package:open_Education/Modules/Widgets/custom_dropdown_button.dart';
import 'package:open_Education/Modules/Widgets/custom_elevatedButton.dart';
import 'package:open_Education/constant/appColors.dart';
import 'package:open_Education/constant/box_shadow.dart';
import 'package:open_Education/constant/textStyles.dart';
import 'package:open_Education/utils/global_functions.dart';
import 'package:sizer/sizer.dart';

class CheckListPublicWithQrCode extends StatelessWidget {
  const CheckListPublicWithQrCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffolds.pagesScaffold(
        context: context,
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 4.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(width: 0.0, height: 3.h),
                Text('chose_a_hall'.tr(context)),
                SizedBox(width: 0.0, height: 1.h),
                CustomDropdownButton(
                    usagePosition: 3, // jalal
                    items: ["قاعة 15", "قاعة 10"]),
                SizedBox(width: 0.0, height: 4.h),
                Text(
                  '${"Total_number_of_students".tr(context)} : 50',
                  style: AppTextStyles.secondTitle,
                ),
                Text('${"Number_of_students_attending".tr(context)} : 20',
                    style: AppTextStyles.secondTitle),
                SizedBox(width: 0.0, height: 4.h),
                CustomElevatedButton(
                  titlebutton: "check_by_scanning_the_QR_Code".tr(context),
                  onPressed: () {
                    routingPage(context, CustomQRView());
                  },
                ),
                SizedBox(width: 0.0, height: 2.h),
                CustomElevatedButton(
                  titlebutton: "Enter_the_exam_number".tr(context),
                  onPressed: () {routingPage(context, InputCheckList());
                  },
                ),
                SizedBox(width: 0.0, height: 4.h),
                Container(
                  padding: EdgeInsets.all(1.h),
                  decoration: BoxDecoration(
                      boxShadow: boxShadow,
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(3.w)),
                  child: Table(
                    border: TableBorder(
                        horizontalInside: BorderSide(
                          color: AppColors.purple.withOpacity(0.5),
                        ),
                        verticalInside:
                            const BorderSide(color: AppColors.purple)),
                    children: [
                      TableRow(children: [
                        CustomTableCell(
                          cellTitle: "Student_ID".tr(context),
                        ),
                        CustomTableCell(
                          cellTitle: "Student_Name".tr(context),
                        ),
                        CustomTableCell(
                          cellTitle: "father".tr(context),
                        ),
                        CustomTableCell(
                          cellTitle: "notes".tr(context),
                        ),
                      ]),
                      ...List.generate(
                          10,
                          (index) => TableRow(children: [
                                CustomTableCell(cellTitle: "1"),
                                CustomTableCell(cellTitle: "2"),
                                CustomTableCell(cellTitle: "3"),
                                CustomTableCell(cellTitle: "4"),
                              ]))
                    ],
                  ),
                ),
                SizedBox(width: 0.0, height: 1.h)
              ],
            ),
          ),
        ),
        appbarTitle: "appbarTitle");
  }
}

class CustomTableCell extends StatelessWidget {
  const CustomTableCell({
    required this.cellTitle,
    super.key,
  });
  final String cellTitle;

  @override
  Widget build(BuildContext context) {
    return TableCell(
        child: Center(
      child: Padding(
        padding: EdgeInsets.all(1.5.w),
        child: Text(
          cellTitle,
          style: AppTextStyles.secondTitle,
        ),
      ),
    ));
  }
}
