import 'package:flutter/material.dart';
import 'package:open_Education/Localization/AppLocalization.dart';
import 'package:open_Education/Modules/Supervisor/View/Screen/correcting_exam_number.dart';
import 'package:open_Education/Modules/Supervisor/View/Screen/input_check_list.dart';
import 'package:open_Education/utils/global_functions.dart';
import 'package:sizer/sizer.dart';
import '../../../../Localization/LocalizationPopUpWidget.dart';
import '../../../../constant/Images-Routes.dart';
import '../../../../constant/textStyles.dart';
import '../../../Widgets/app_scaffolds.dart';
import '../../../Widgets/custom_TextField.dart';
import '../../../Widgets/custom_elevatedButton.dart';

class NameEntry extends StatelessWidget {
  final Widget size = SizedBox(height: 2.5.h);
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController fatherNameController = TextEditingController();
  final TextEditingController motherNameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return AppScaffolds.pagesScaffold(
      context: context,
      appbarTitle:"exam_number".tr(context),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal:4.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              size,
          Align(
              alignment: AlignmentDirectional.centerStart,
              child: Text("data",style:AppTextStyles.secondTitle)),
              size,
              CircleAvatar(radius: 10.w,
                child: Image.asset(Images.damascusUniversityLogo),
              ),
              size,
              CustomTextField(
                controller: firstNameController,
                keyboardtype: TextInputType.name,
                hinttext: "first_name".tr(context),
              ),
              size,
              CustomTextField(
                controller: lastNameController,
                keyboardtype: TextInputType.name,
                hinttext: "last_name".tr(context),
              ),
              size,
              CustomTextField(
                controller: fatherNameController,
                keyboardtype: TextInputType.name,
                hinttext: "father_name".tr(context),),
              size,
              CustomTextField(
                controller: motherNameController,
                keyboardtype: TextInputType.name,
                hinttext: "mother_name".tr(context),
              ),
              SizedBox(height:7.h),
              CustomElevatedButton(titlebutton: "Correcting_exam_number".tr(context), onPressed:(){
                routingPage(context,CorrectingExamNumber());
              }),
              size,
              CustomElevatedButton(titlebutton: "done".tr(context), onPressed:(){
                routingPage(context,InputCheckList());
              }),
              size,
            ],
          ),
        ),
      ),
    );
  }
}
