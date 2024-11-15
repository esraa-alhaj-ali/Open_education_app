import 'package:flutter/material.dart';
import 'package:open_Education/Localization/AppLocalization.dart';
import 'package:open_Education/constant/appColors.dart';
import 'package:open_Education/constant/textStyles.dart';
import 'package:sizer/sizer.dart';

class CustomExpantionTile extends StatelessWidget {
  const CustomExpantionTile({
    super.key,
    required this.listDocuments,
    required this.title,
  });

  final List<String> listDocuments;
  final String title;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      collapsedBackgroundColor: AppColors.grey.withOpacity(0.3),
      collapsedShape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.w)),
      iconColor: AppColors.purple,
      collapsedIconColor: AppColors.purple,
       backgroundColor: AppColors.grey.withOpacity(0.3),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.w)),
      title: Text(
        title,
        style: AppTextStyles.titlesMeduim.copyWith(color: AppColors.purple),
      ),
      children: listDocuments
          .map<Widget>((e) => Column(
                children: <Widget>[
                  Divider(
                    height: 0.2.h,
                  ),
                  ListTile(
                    onTap: () {
                      // set selected item as title
                    },
                    title: Text(
                      e,
                      style: AppTextStyles.titlesMeduim,
                    ),
                  )
                ],
              ))
          .toList(),
    );
  }
}
