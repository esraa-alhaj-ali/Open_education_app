import 'package:flutter/material.dart';
import 'package:open_Education/Localization/AppLocalization.dart';
import 'package:open_Education/Modules/Payments/Views/Screens/payments.dart';
import 'package:open_Education/Modules/Widgets/custom_elevatedButton.dart';
import 'package:open_Education/utils/global_functions.dart';
 import 'package:sizer/sizer.dart';
import '../../../../constant/textStyles.dart';
import '../../../Widgets/alert_dialog.dart';
import '../../../Widgets/app_scaffolds.dart';
import '../../../Widgets/custom_TextField.dart';

class GradeReport extends StatelessWidget {
  final TextEditingController infoaccountcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return AppScaffolds.pagesScaffold(
      context: context,
      appbarTitle: "Ordering_System(grade_report)".tr(context),
      body: Container(
        margin: EdgeInsets.symmetric(
          horizontal: 4.w,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  margin: EdgeInsets.symmetric(vertical: 1.h),
                  alignment: AlignmentDirectional.topStart,
                  child: Text(
                    "Info(Arabic)",
                    style: AppTextStyles.titlesMeduim,
                  )),
              GridView(
                physics: NeverScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 1.h,
                  crossAxisSpacing: 1.w,
                  childAspectRatio: 4.0,
                ),
                children: [
                  CustomTextField(
                    readonly: true,
                    controller: infoaccountcontroller,
                    keyboardtype: TextInputType.name,
                    hinttext: "first_name".tr(context),
                  ),
                  CustomTextField(
                    readonly: true,
                    controller: infoaccountcontroller,
                    keyboardtype: TextInputType.name,
                    hinttext: "last_name".tr(context),
                  ),
                  CustomTextField(
                    readonly: true,
                    controller: infoaccountcontroller,
                    keyboardtype: TextInputType.name,
                    hinttext: "father_name".tr(context),
                  ),
                  CustomTextField(
                    readonly: true,
                    controller: infoaccountcontroller,
                    keyboardtype: TextInputType.name,
                    hinttext: "mother_name".tr(context),
                  ),
                  CustomTextField(
                    readonly: true,
                    controller: infoaccountcontroller,
                    keyboardtype: TextInputType.name,
                    hinttext: "birthday_place".tr(context),
                  ),
                  CustomTextField(
                    readonly: true,
                    controller: infoaccountcontroller,
                    keyboardtype: TextInputType.name,
                    hinttext: "birthday_date".tr(context),
                  ),
                  CustomTextField(
                    readonly: true,
                    controller: infoaccountcontroller,
                    keyboardtype: TextInputType.name,
                    hinttext: "gender".tr(context),
                  ),
                  CustomTextField(
                    readonly: true,
                    controller: infoaccountcontroller,
                    keyboardtype: TextInputType.name,
                    hinttext: "national".tr(context),
                  ),
                ],
              ),
              SizedBox(
                height: 2.h,
              ),
              Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  alignment: AlignmentDirectional.topStart,
                  child: Text(
                    "Info(English)",
                    style: AppTextStyles.titlesMeduim,
                  )),
              GridView(
                physics: NeverScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 1.h,
                  crossAxisSpacing: 1.w,
                  childAspectRatio: 4.0,
                ),
                children: [
                  CustomTextField(
                    readonly: true,
                    controller: infoaccountcontroller,
                    keyboardtype: TextInputType.name,
                    hinttext: "first_name".tr(context),
                  ),
                  CustomTextField(
                    readonly: true,
                    controller: infoaccountcontroller,
                    keyboardtype: TextInputType.name,
                    hinttext: "last_name".tr(context),
                  ),
                  CustomTextField(
                    readonly: true,
                    controller: infoaccountcontroller,
                    keyboardtype: TextInputType.name,
                    hinttext: "father_name".tr(context),
                  ),
                  CustomTextField(
                    readonly: true,
                    controller: infoaccountcontroller,
                    keyboardtype: TextInputType.name,
                    hinttext: "mother_name".tr(context),
                  ),
                  CustomTextField(
                    readonly: true,
                    controller: infoaccountcontroller,
                    keyboardtype: TextInputType.name,
                    hinttext: "birthday_place".tr(context),
                  ),
                  CustomTextField(
                    readonly: true,
                    controller: infoaccountcontroller,
                    keyboardtype: TextInputType.name,
                    hinttext: "birthday_date".tr(context),
                  ),
                  CustomTextField(
                    readonly: true,
                    controller: infoaccountcontroller,
                    keyboardtype: TextInputType.name,
                    hinttext: "gender".tr(context),
                  ),
                  CustomTextField(
                    readonly: true,
                    controller: infoaccountcontroller,
                    keyboardtype: TextInputType.name,
                    hinttext: "national".tr(context),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                "sure from your information?".tr(context),
                style: AppTextStyles.titlesAuthLarge
                    .copyWith(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 3.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.w),
                child: CustomElevatedButton(
                    titlebutton: "Send_the request".tr(context),
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialogBox(
                                text:
                                    "The_application has been registered successfully. Please pay the application fee.".tr(context),
                                ontap: () {
                                  routingPage(context, Payments());
                                },
                                titleButton: "Payment_of_fees".tr(context));
                          });
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
