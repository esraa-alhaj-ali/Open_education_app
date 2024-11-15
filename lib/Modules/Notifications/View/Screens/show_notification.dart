import 'package:flutter/material.dart';
import 'package:open_Education/Localization/AppLocalization.dart';
import 'package:open_Education/constant/textStyles.dart';
import 'package:open_Education/Modules/Widgets/app_scaffolds.dart';
 import 'package:sizer/sizer.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List temps = [
      "Please receive your certified graduation certificate Please bring the required documents by Thursday, February 13th ",
    ];

    return AppScaffolds.pagesScaffold(
        appbarTitle: "noticfications".tr(context),
        context: context,
        body: ListView.builder(
          itemBuilder: (context, index) => Card(
            margin: EdgeInsets.symmetric(vertical: 1.h, horizontal: 3.w),
            child: ListTile(
                title: Text(
                  'Receive certified graduation',
                  style: AppTextStyles.titlesMeduim
                      .copyWith(fontWeight: FontWeight.w600),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 3),
                  child: Text(
                    temps[index],
                    style: AppTextStyles.secondTitle.copyWith(height: 0),
                  ),
                )),
          ),
          itemCount: temps.length,
        ));
  }
}
