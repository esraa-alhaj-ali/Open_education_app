import 'package:flutter/material.dart';
import 'package:open_Education/Localization/AppLocalization.dart';
import 'package:open_Education/Modules/Widgets/app_scaffolds.dart';
import 'package:open_Education/utils/global_functions.dart';
import 'package:sizer/sizer.dart';
import '../../../../constant/textStyles.dart';
import '../../../Widgets/custom_TextField.dart';
import '../../../Widgets/custom_elevatedButton.dart';
import 'check_list_public.dart';
class CorrectingExamNumber extends StatelessWidget {
  final Widget size = SizedBox(height: 2.5.h);
  final TextEditingController examNumberController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return AppScaffolds.pagesScaffold(
      context: context,
      appbarTitle:"Correcting_exam_number".tr(context),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal:4.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              size,
              Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: Text("Input_number_exam".tr(context),style: AppTextStyles.titlesMeduim,)),
              SizedBox(height: 2.h,),
              CustomTextField(
                controller: examNumberController,
                keyboardtype: TextInputType.name,
                hinttext: "exam_number".tr(context),
              ),
              SizedBox(height:60.h,),
              CustomElevatedButton(titlebutton: "checking".tr(context), onPressed:(){
                routingPage(context,CheckListPublicWithQrCode());
              }),
            ],
          ),
        ),
      ),
    );
  }
}
