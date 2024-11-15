import 'package:flutter/material.dart';
import 'package:open_Education/Localization/AppLocalization.dart';
import 'package:sizer/sizer.dart';

import '../../../../constant/Images-Routes.dart';
import '../../../../constant/textStyles.dart';
import '../../../../model/degree_statistics.dart';
import '../../../Widgets/app_scaffolds.dart';
import '../../../Widgets/custom_TextField.dart';
import '../../../Widgets/custom_elevatedButton.dart';
import '../../../Widgets/custom_table.dart';

class CheckList extends StatefulWidget {
  @override
  State<CheckList> createState() => _CheckListState();
}

class _CheckListState extends State<CheckList> {
  final Widget size = SizedBox(height: 5.h);

  List<DegreeStatistic>? degrees;

  @override
  void initState() {
    // TODO: implement initState
    degrees = DegreeStatistic.generate();
  }

  final TextEditingController examNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AppScaffolds.pagesScaffold(
      context: context,
      appbarTitle: 'check_list'.tr(context),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 4.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              size,
              Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: Text(
                    "Input_number_exam".tr(context),
                    style: AppTextStyles.titlesMeduim,
                  )),
              SizedBox(
                height: 2.h,
              ),
              CustomTextField(
                controller: examNumberController,
                keyboardtype: TextInputType.name,
                hinttext: "exam_number".tr(context),
              ),
              size,
              CircleAvatar(
                radius: 10.w,
                child: Image.asset(Images.damascusUniversityLogo),
              ),
              size,
              CustomTable(
                columnWidths: [29.w, 29.w, 29.w ],
                header: RowData([
                  "Name",
                  "mother",
                  "father",
                ], [
                 ]),
                rows: degrees!
                    .map((e) => RowData(
                          [
                            e.id,
                            e.coursename,
                            e.degree,
                          ],
                          [ ],
                        ))
                    .toList(),
              ),
              SizedBox(
                height: 10.h,
              ),
              CustomElevatedButton(
                  titlebutton: "done".tr(context), onPressed: () {}),
              SizedBox(width: 0.0, height: 2.h)
            ],
          ),
        ),
      ),
    );
  }
}
