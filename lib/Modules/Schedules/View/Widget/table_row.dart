import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:open_Education/Localization/AppLocalization.dart';
import 'package:open_Education/constant/appColors.dart';
import 'package:open_Education/constant/textStyles.dart';
import 'package:open_Education/Modules/Subjects/View/Screens/subject_details.dart';
import 'package:open_Education/utils/global_functions.dart';
import 'package:sizer/sizer.dart';

TableRow buildRow(
    {required String subjecctName,
    required String subjectCode,
    int? num,
    required BuildContext context}) {
  return TableRow(children: [
    TableCell(
      child: InkWell(
        onTap: num != null
            ? null
            : () {
                routingPage(
                    context, SubjectDetailsScreen(subjectName: subjecctName));
              },
        child: Center(
            child: Text(
          subjecctName,
          style: num != null
              ? AppTextStyles.titlesMeduim.copyWith(height: 0.3.h)
              : AppTextStyles.titlesMeduimTable.copyWith(
                  decoration: TextDecoration.underline,
                  decorationColor: AppColors.purple,
                ),
        )),
      ),
    ),
    TableCell(
      child: Center(
        child: Text(
          subjectCode,
          style: num != null
              ? AppTextStyles.titlesMeduim.copyWith(height: 0.3.h)
              : AppTextStyles.titlesMeduimTable,
        ),
      ),
    )
  ]);
}
