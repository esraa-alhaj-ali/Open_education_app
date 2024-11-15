import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:open_Education/constant/Images-Routes.dart';
import 'package:open_Education/constant/textStyles.dart';
import 'package:open_Education/Modules/Teachers/View/Screens/teacher_details.dart';
import 'package:open_Education/utils/global_functions.dart';
import 'package:sizer/sizer.dart';

class TeacherCard extends StatelessWidget {
  const TeacherCard({
    required this.teacherName,
    super.key,
    required this.ImagePath,
    required this.subjectName,
  });
  final String teacherName;
  final String ImagePath;
  final String subjectName;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: InkWell(
            onTap: () {
              routingPage(context, TeacherDetails(subjectName:  subjectName ));
            },
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.grey, borderRadius: BorderRadius.circular(4.w)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(4.w),
                child: Image.asset(
                  "${Images.rootImages}/tem9.png" ,fit: BoxFit.cover,
                  width: double.infinity,
                ),
              ),
            ),
          ),
        ),
        Text(
          teacherName,
          style: AppTextStyles.secondTitle,
        )
      ],
    );
  }
}
