 import 'package:flutter/material.dart';
 import 'package:open_Education/Localization/AppLocalization.dart';
import 'package:open_Education/Localization/LocalizationPopUpWidget.dart';
import 'package:open_Education/Modules/Widgets/app_scaffolds.dart';
import 'package:open_Education/Modules/Widgets/custom_elevatedButton.dart';
import 'package:open_Education/Modules/Widgets/custom_TextField.dart';
 import 'package:open_Education/constant/Images-Routes.dart';
import 'package:open_Education/constant/textStyles.dart';
 
  import 'package:sizer/sizer.dart';

 
// ignore: must_be_immutable
class ResetPassword extends StatelessWidget {
  ResetPassword({super.key});
  final TextEditingController idNumber = TextEditingController();
  GlobalKey<FormState> textFieldKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return AppScaffolds. auth (
        context: context,
        body: Container(
          padding:   EdgeInsets.symmetric(horizontal: 4.w),
          // height: 100.h,
          width: double.infinity,
          child: Column(
            children: [
              Container(
                alignment: Alignment.centerLeft,
                child: IconButton(
                  onPressed: () {
                    LocalizationPopUpWidget(context: context)
                        .popUpChooseLocale(context);
                  },
                  icon: const Icon(Icons.language_rounded),
                ),
              ),
              Image.asset(
                Images.damascusUniversityLogo,
                width: 16.h,
              ),
              SizedBox(width: 0.0, height: 1.9.h),
              Text(
                "Legal_Studies_Program".tr(context),
                style: AppTextStyles.titlesAuthLarge,
              ),
              SizedBox(width: 0.0, height: 2.5 .h),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.only(
                        top: 0.8.h, bottom: 1.8.h, right: 2.w, left: 2.w),
                    child: Text(
                      'forget_password_title'.tr(context),
                      style: AppTextStyles.titlesMeduim,
                    ),
                  ),
                ],
              ),
              Form(
                key: key,
                child: Column(
                  children: <Widget>[CustomTextField(
                  controller: idNumber,
                  keyboardtype: TextInputType.name,
                   
                  hinttext: "entre_new_password".tr(context),
                ),
                SizedBox(width: 0.0, height: 2.5.h),
                
                CustomTextField(
                  controller: idNumber,
                  keyboardtype: TextInputType.name,
                   
                  hinttext: "confirm_password".tr(context),
                ),],
                )
              ),
              SizedBox(width: 0.0, height: 2.5.h),
              CustomElevatedButton(
                titlebutton: 'save'.tr(context),
                onPressed: () {},
              ), 
            ],
          ),
        ));
  }
}
