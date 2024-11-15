import 'package:flutter/material.dart';
import 'package:open_Education/Localization/AppLocalization.dart';
import 'package:open_Education/Modules/Auth/Cubit/cubit/create_account_cubit.dart';
import 'package:open_Education/Modules/Widgets/custom_TextField.dart';
import 'package:open_Education/Modules/Widgets/custom_dropdown_button.dart';
import 'package:open_Education/Modules/Widgets/custom_elevatedButton.dart';
import 'package:open_Education/constant/appColors.dart';
import 'package:open_Education/constant/textStyles.dart';
import 'package:sizer/sizer.dart';

class SignUpStepOne extends StatelessWidget {
  SignUpStepOne({super.key});

  @override
  Widget build(BuildContext context) {
    CreateAccountCubit createAccountCubit = CreateAccountCubit.get(context);

    return Form(
        key: createAccountCubit.firstPageCreateAccount,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Enter_personal_information_in_Arabic'.tr(context),
              style: AppTextStyles.titlesMeduim,
            ),
            SizedBox(width: 0.0, height: 1.h),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    CustomTextField(
                      
                      controller: createAccountCubit.firstName,
                      keyboardtype: TextInputType.name,
                      hinttext: "first_name".tr(context),
                    ),
                    SizedBox(height: 1.7.h),
                    CustomTextField(
                      controller: createAccountCubit.lastName,
                      keyboardtype: TextInputType.name,
                      hinttext: "last_name".tr(context),
                    ),
                    SizedBox(height: 1.7.h),
                    CustomTextField(
                      controller: createAccountCubit.fatherName,
                      keyboardtype: TextInputType.name,
                      hinttext: "father_name".tr(context),
                    ),
                    SizedBox(height: 1.7.h),
                    CustomTextField(
                      controller: createAccountCubit.motherName,
                      keyboardtype: TextInputType.name,
                      hinttext: "mother_name".tr(context),
                    ),
                    SizedBox(height: 1.7.h),
                    CustomTextField(
                      controller: createAccountCubit.birthdayPlace,
                      keyboardtype: TextInputType.name,
                      hinttext: "birthday_place".tr(context),
                    ),
                    SizedBox(height: 1.7.h),
                    CustomTextField(
                      hinttext: "birthday_date".tr(context),
                      ontap: () {
                        showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(1947),
                          lastDate: DateTime(2030),
                          initialDatePickerMode: DatePickerMode.year,
                        ).then((value) => {
                              if (value != null)
                                {
                                  createAccountCubit.birthdaydate.text =
                                      "${value.year}:${value.month}:${value.day}"
                                }
                              else
                                {createAccountCubit.birthdaydate.text = ""}
                            });
                      },
                      keyboardtype: TextInputType.datetime,
                      controller: createAccountCubit.birthdaydate,
                      iconsuffix: Icon(
                        Icons.date_range_outlined,
                        size: 7.w,
                        color: AppColors.purple,
                      ),
                      validate: (value) {
                        if (value!.isEmpty) {
                          return "Birthday must not be Empty";
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 1.7.h),
                    CustomDropdownButton(
usagePosition: 5,// jalla

                      items: ['Sy',"So"],
                      hint: 'nationality'.tr(context),
                    ),
                    SizedBox(height: 1.7.h),
                    CustomTextField(
                      controller: createAccountCubit.nationalNumber,
                      keyboardtype: TextInputType.number,
                      hinttext: "national_number".tr(context),
                    ),
                    SizedBox(height: 1.7.h),
                    CustomTextField(
                      controller: createAccountCubit.identityNumber,
                      keyboardtype: TextInputType.number,
                      hinttext: "identity_number".tr(context),
                    ),
                    SizedBox(height: 1.7.h),
                    CustomTextField(
                      controller: createAccountCubit.placeOfRegistration,
                      keyboardtype: TextInputType.name,
                      hinttext: "registration_place".tr(context),
                    ),
                    SizedBox(height: 1.7.h),
                    CustomTextField(
                      controller: createAccountCubit.registrationNumber,
                      keyboardtype: TextInputType.number,
                      hinttext: "registration_number".tr(context),
                    ),
                    SizedBox(height: 1.7.h),
                    CustomTextField(
                      controller: createAccountCubit.passportNumber,
                      keyboardtype: TextInputType.number,
                      hinttext: "passport_number".tr(context),
                    ),
                    SizedBox(height: 1.7.h),
                    CustomTextField(
                      controller: createAccountCubit.recruitmentDivision,
                      keyboardtype: TextInputType.name,
                      hinttext: "Recruitment_Division".tr(context),
                    ),
                    SizedBox(height: 1.7.h),
                    CustomTextField(
                      controller: createAccountCubit.governorate,
                      keyboardtype: TextInputType.name,
                      hinttext: "city".tr(context),
                    ),
                    SizedBox(height: 3.5.h),
                    CustomElevatedButton(
                        titlebutton: "next".tr(context),
                        onPressed: () {
                          CreateAccountCubit.get(context).nextSteep(1);
                        }),
                    SizedBox(height: 2.5.h),
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
