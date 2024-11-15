import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../constant/textStyles.dart';
import 'custom_elevatedButton.dart';

class AlertDialogBox extends StatelessWidget {
  final String text;
  final Function() ontap;
  final String titleButton;
  AlertDialogBox(
      {required this.text, required this.ontap, required this.titleButton});
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.w)),
      elevation: 10.0,
      actionsPadding: EdgeInsets.all(5.w),
      actions: [
        CustomElevatedButton(
          titlebutton: titleButton,
          onPressed: ontap,
          hight: 5.5,
        ),
      ],
      contentPadding: EdgeInsets.only(left: 4.w, right: 4.w, bottom: 1.h),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IconButton(
              alignment: Alignment.centerLeft,
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.clear)),
          Text(
            text,
            style: AppTextStyles.titlesMeduim.copyWith(
                fontWeight: FontWeight.w400,
                color: const Color.fromARGB(172, 0, 0, 0)),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
