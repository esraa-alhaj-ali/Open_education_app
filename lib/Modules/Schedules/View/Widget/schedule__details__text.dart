import 'package:flutter/material.dart';
import 'package:open_Education/constant/appColors.dart';
import 'package:open_Education/constant/textStyles.dart';
import 'package:sizer/sizer.dart';

class SceduleDetailsText extends StatelessWidget {
  const SceduleDetailsText({
    super.key, required this.title, required this.descreption,
  });
final String title;
final String descreption;
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        SizedBox(width: 0.0, height: 1.5.h),

        Text(
          title,
          style: AppTextStyles.titlesMeduim
              .copyWith(color: AppColors.purple),
        ),
        SizedBox(width: 0.0, height: 0.8.h),
        Text(
          descreption ,
          style: AppTextStyles.explanatoryText,
        ),
      ],
    );
  }
}
