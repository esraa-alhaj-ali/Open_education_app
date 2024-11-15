import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart'; 
import 'package:open_Education/Localization/AppLocalization.dart'; 
import 'package:open_Education/Modules/Auth/Cubit/cubit/create_account_cubit.dart';
import 'package:open_Education/Modules/Widgets/custom_TextField.dart';
import 'package:open_Education/Modules/Widgets/custom_elevatedButton.dart';
import 'package:open_Education/constant/textStyles.dart';
import 'package:sizer/sizer.dart';

class SignUpStepFour extends StatelessWidget {
  SignUpStepFour({super.key});

  @override
  Widget build(BuildContext context) {
    CreateAccountCubit createAccountCubit = CreateAccountCubit.get(context);

    return Form(
      key: createAccountCubit.fourthPageCreateAccount,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Enter_high_school_diploma_details'.tr(context),
            style: AppTextStyles.titlesMeduim,
          ),
          SizedBox(width: 0.0, height: 1.h),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  CustomTextField(
                    controller: createAccountCubit.certificateType,
                    keyboardtype: TextInputType.name,
                    hinttext: "Type_of_certificate".tr(context),
                  ),
                  SizedBox(height: 1.7.h),
                  CustomTextField(
                      controller: createAccountCubit.certificateSource,
                      keyboardtype: TextInputType.name,
                      hinttext: "Certificate_source".tr(context)),
                  SizedBox(height: 1.7.h),
                  CustomTextField(
                      controller: createAccountCubit.generalAverage,
                      keyboardtype: TextInputType.emailAddress,
                      hinttext: "General_average".tr(context)),
                  SizedBox(height: 1.7.h),
                  CustomTextField(
                      controller: createAccountCubit.englishLanguageMark,
                      keyboardtype: TextInputType.name,
                      hinttext: "English_language_mark".tr(context)),
                  SizedBox(height: 1.7.h),
                  CustomTextField(
                      controller: createAccountCubit.frenchLanguageMark,
                      keyboardtype: TextInputType.name,
                      hinttext: "French_language_mark".tr(context)),
                  SizedBox(height: 1.7.h),
                  CustomTextField(
                      controller: createAccountCubit.religiousEducationMark,
                      keyboardtype: TextInputType.name,
                      hinttext: "mark_of_religious_education".tr(context)),
                  SizedBox(height: 1.7.h),
                  CustomTextField(
                      controller: createAccountCubit.studentLanguage,
                      keyboardtype: TextInputType.name,
                      hinttext: "Student_language".tr(context)),
                  SizedBox(height: 1.7.h),
                  CustomTextField(
                      controller: createAccountCubit.differentialRate,
                      keyboardtype: TextInputType.name,
                      hinttext: "Differential_rate".tr(context)),
                  SizedBox(height: 1.7.h),
                  CustomTextField(
                      controller: createAccountCubit.nameOfTheInstitute,
                      keyboardtype: TextInputType.name,
                      hinttext: "Name_of_the_institute".tr(context)),
                  SizedBox(height: 1.7.h),
                  CustomTextField(
                      controller: createAccountCubit.specializationName,
                      keyboardtype: TextInputType.name,
                      hinttext: "Specialization_name".tr(context)),
                  SizedBox(height: 1.7.h),
                  CustomTextField(
                      controller: createAccountCubit.graduationYear,
                      keyboardtype: TextInputType.datetime,
                      hinttext: "graduation_year".tr(context)),
                  SizedBox(height: 4.5.h),
                  CustomElevatedButton(
                      titlebutton: "next".tr(context),
                      onPressed: () {
                        CreateAccountCubit.get(context).nextSteep(4);
                      }),
                  SizedBox(height: 1.5.h),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
