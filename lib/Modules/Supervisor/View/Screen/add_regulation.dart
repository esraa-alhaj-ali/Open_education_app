import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:open_Education/Localization/AppLocalization.dart';
import 'package:open_Education/Modules/Supervisor/View/Screen/add_regulation_image.dart';
import 'package:open_Education/Modules/Widgets/app_scaffolds.dart';
import 'package:open_Education/Modules/Widgets/custom_TextField.dart';
import 'package:open_Education/Modules/Widgets/custom_dropdown_button.dart';
import 'package:open_Education/Modules/Widgets/custom_elevatedButton.dart';
import 'package:open_Education/constant/Images-Routes.dart';
import 'package:open_Education/constant/textStyles.dart';
import 'package:open_Education/utils/global_functions.dart';
import 'package:sizer/sizer.dart';

class AddRegulation extends StatelessWidget {
  AddRegulation({Key? key}) : super(key: key);
  final TextEditingController firstName = TextEditingController();
  final TextEditingController lastName = TextEditingController();
  final TextEditingController fatherName = TextEditingController();
  final TextEditingController motherName = TextEditingController();
  final SizedBox _sizedBox = SizedBox(
    height: 2.3.h,
  );
  @override
  Widget build(BuildContext context) {
    return AppScaffolds.pagesScaffold(
        context: context,
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 4.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                SizedBox(width: 0.0, height: 3.h),
                Align(
                  child: Image.asset(
                    Images.damascusUniversityLogo,
                    width: 40.w,
                  ),
                ) // منضيف صورة الشخص بدلها
                ,
                _sizedBox,
                _sizedBox,
                CustomTextField(
                  controller: firstName,
                  keyboardtype: TextInputType.name,
                  hinttext: "first_name".tr(context),
                ),
                _sizedBox,
                CustomTextField(
                  controller: lastName,
                  keyboardtype: TextInputType.name,
                  hinttext: "last_name".tr(context),
                ),
                _sizedBox,
                CustomTextField(
                  controller: fatherName,
                  keyboardtype: TextInputType.name,
                  hinttext: "father_name".tr(context),
                ),
                _sizedBox,
                CustomTextField(
                  controller: motherName,
                  keyboardtype: TextInputType.name,
                  hinttext: "mother_name".tr(context),
                ),
                SizedBox(width: 0.0, height: 1.9.h),
                Text(
                  'Choose_the_Regulation_type'.tr(context),
                  style: AppTextStyles.titlesMeduim,
                ),
                SizedBox(width: 0.0, height: 0.5.h),
                CustomDropdownButton(
                  
                   usagePosition: 2,// cubit  لكي يتم إضافة العنصر في 
                  items: [
                  "غش",
                  "قلة أدب ",
                  "قلة ذوق ",
                  "قلة حياء ",
                  "... المعلومات مؤقتة "
                ]),
                _sizedBox,
                _sizedBox,  
                CustomElevatedButton(
                    titlebutton: "next".tr(context), onPressed: () {

                      routingPage(context,   AddRegulationImage());
                    })
              ],
            ),
          ),
        ),
        appbarTitle: "add_an_exam_Regulation".tr(context));
  }
}
