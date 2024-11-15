import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:open_Education/Localization/AppLocalization.dart';
import 'package:open_Education/constant/Images-Routes.dart';

import 'package:open_Education/constant/appColors.dart';
import 'package:open_Education/constant/textStyles.dart';

import 'package:open_Education/Modules/Widgets/app_scaffolds.dart';
import 'package:sizer/sizer.dart';

// ignore: must_be_immutable
class DocumentsDetails extends StatelessWidget {
  const DocumentsDetails({super.key, required this.selectedType});
  final String selectedType;
  @override
  Widget build(BuildContext context) {
    return AppScaffolds.pagesScaffold(
        appbarTitle: "documents".tr(context),
        context: context,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(
                  left: 5.w, right: 5.w, top: 7.h, bottom: 1.5.h),
              child: Text( "documen name", style: AppTextStyles.titlesMeduim),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  child: Image.asset(
                    "${Images.rootImages}/temp10.png",
                    fit: BoxFit.cover,
                  ),
                  margin: EdgeInsets.symmetric(
                    horizontal: 5.w,
                  ),
                  color: AppColors.grey,
                  height: 55.h,
                  width: 100.w, // image in background
                ),
              ),
            )
          ],
        ));
  }
}
