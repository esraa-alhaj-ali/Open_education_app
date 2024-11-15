import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:open_Education/Localization/AppLocalization.dart';
import 'package:open_Education/Modules/Auth/Cubit/cubit/create_account_cubit.dart';
import 'package:open_Education/Modules/Widgets/custom_TextField.dart';
import 'package:open_Education/Modules/Widgets/custom_elevatedButton.dart';
import 'package:open_Education/constant/textStyles.dart';
import 'package:sizer/sizer.dart';

class SignUpStepTow extends StatelessWidget {
  SignUpStepTow({super.key});

  @override
  Widget build(BuildContext context) {
    CreateAccountCubit createAccountCubit = CreateAccountCubit.get(context);

    return Form(
      key: createAccountCubit.secondPageCreateAccount,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Enter_personal_information_in_English'.tr(context),
            style: AppTextStyles.titlesMeduim,
          ),
          SizedBox(width: 0.0, height: 1.h),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  CustomTextField(
                    controller: createAccountCubit.firstNameInEnglish,
                    keyboardtype: TextInputType.name,
                    hinttext: "First name",
                  ),
                  SizedBox(height: 1.7.h),
                  CustomTextField(
                      controller: createAccountCubit.lastNameInEnglish,
                      keyboardtype: TextInputType.name,
                      hinttext: "Last name"),
                  SizedBox(height: 1.7.h),
                  CustomTextField(
                      controller: createAccountCubit.fatherNameInEnglish,
                      keyboardtype: TextInputType.name,
                      hinttext: "Father name"),
                  SizedBox(height: 1.7.h),
                  CustomTextField(
                      controller: createAccountCubit.motherNameInEnglish,
                      keyboardtype: TextInputType.name,
                      hinttext: "Mother name"),
                  SizedBox(height: 1.7.h),
                  CustomTextField(
                      controller: createAccountCubit.birthdayPlaceInEnglish,
                      keyboardtype: TextInputType.name,
                      hinttext: "Place of birth"),
                  SizedBox(height: 4.5.h),
                  CustomElevatedButton(
                      titlebutton: "next".tr(context),
                      onPressed: () {
                        CreateAccountCubit.get(context).nextSteep(2);
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
