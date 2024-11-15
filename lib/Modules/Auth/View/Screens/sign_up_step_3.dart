import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:open_Education/Localization/AppLocalization.dart';
import 'package:open_Education/Modules/Auth/Cubit/cubit/create_account_cubit.dart';
import 'package:open_Education/Modules/Widgets/custom_TextField.dart';
import 'package:open_Education/Modules/Widgets/custom_elevatedButton.dart';
import 'package:open_Education/constant/textStyles.dart';
import 'package:sizer/sizer.dart';

class SignUpStepThree extends StatelessWidget {
  SignUpStepThree({super.key});

  @override
  Widget build(BuildContext context) {
    CreateAccountCubit createAccountCubit = CreateAccountCubit.get(context);

    return Form(
      key: createAccountCubit.thirdPageCreateAccount,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Contact_information'.tr(context),
            style: AppTextStyles.titlesMeduim,
          ),
          SizedBox(width: 0.0, height: 1.h),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  CustomTextField(
                    controller: createAccountCubit.mobileNumber,
                    keyboardtype: TextInputType.number,
                    hinttext: "Mobile_number".tr(context),
                  ),
                  SizedBox(height: 1.7.h),
                  CustomTextField(
                      controller: createAccountCubit.phoneNumber,
                      keyboardtype: TextInputType.number,
                      hinttext: "Phone_number".tr(context)),
                  SizedBox(height: 1.7.h),
                  CustomTextField(
                      controller: createAccountCubit.email,
                      keyboardtype: TextInputType.emailAddress,
                      hinttext: "email".tr(context)),
                  SizedBox(height: 1.7.h),
                  CustomTextField(
                      controller: createAccountCubit.residingCountry,
                      keyboardtype: TextInputType.name,
                      hinttext: "Residing_Country".tr(context)),
                  SizedBox(height: 1.7.h),
                  CustomTextField(
                      controller: createAccountCubit.cityOfResidence,
                      keyboardtype: TextInputType.name,
                      hinttext: "City_of_Residence".tr(context)),
                  SizedBox(height: 1.7.h),
                  CustomTextField(
                      controller: createAccountCubit.permanentAdress,
                      keyboardtype: TextInputType.name,
                      hinttext: "permanent_adress".tr(context)),
                  SizedBox(height: 1.7.h),
                  CustomTextField(
                      controller: createAccountCubit.currentAdress,
                      keyboardtype: TextInputType.name,
                      hinttext: "current_adress".tr(context)),
                  SizedBox(height: 4.5.h),
                  CustomElevatedButton(
                      titlebutton: "next".tr(context),
                      onPressed: () {
                        CreateAccountCubit.get(context).nextSteep(3);
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
