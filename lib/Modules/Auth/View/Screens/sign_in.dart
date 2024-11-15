import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:open_Education/Localization/AppLocalization.dart';
import 'package:open_Education/Localization/LocalizationPopUpWidget.dart';
import 'package:open_Education/Modules/Auth/Cubit/States/sign_in_states.dart';
import 'package:open_Education/Modules/Auth/Cubit/cubit/sign_in_cubit.dart';
import 'package:open_Education/Modules/Auth/View/Screens/sign_up.dart';
import 'package:open_Education/Modules/Supervisor/View/Screen/supervisor.dart';
import 'package:open_Education/Modules/Widgets/app_scaffolds.dart';
import 'package:open_Education/Modules/Widgets/custom_dropdown_button.dart';
import 'package:open_Education/Modules/Widgets/custom_elevatedButton.dart';
import 'package:open_Education/Modules/Widgets/custom_TextField.dart';
import 'package:open_Education/SharedPreferences/SharedPreferencesHelper.dart';
import 'package:open_Education/constant/Images-Routes.dart';
import 'package:open_Education/Modules/Auth/View/Screens/forget_password.dart';
import 'package:open_Education/Modules/Home/View/Screens/home_screen.dart';
import 'package:open_Education/constant/appColors.dart';
import 'package:open_Education/utils/global_functions.dart';
import 'package:sizer/sizer.dart';

class SignIn extends StatelessWidget {
  SignIn({super.key});
  @override
  Widget build(BuildContext context) {
    return AppScaffolds.auth(
        context: context,
        body: BlocProvider(
          create: (context) => SignInCubit(),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 4.w),
            width: double.infinity,
            child: BlocBuilder<SignInCubit, SignInStates>(
                builder: (context, state) {
              SignInCubit signinInCubit = SignInCubit.get(context);

              return Form(
                key: signinInCubit.textFieldKey,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
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
                    SizedBox(width: 0.0, height: 1.5.h),
                    Text("Legal_Studies_Program".tr(context)),
                    SizedBox(width: 0.0, height: 5.h),
                    CustomDropdownButton(
                      usagePosition: 1,
                      items: signinInCubit.accountType,
                      hint: "Sign_in_as".tr(context),
                    ),
                    SizedBox(width: 0.0, height: 2.5.h),
                    CustomTextField(
                      controller: signinInCubit.userNameController,
                      keyboardtype: TextInputType.name,
                      hinttext: "user_name_national_number".tr(context),
                    ),
                    SizedBox(width: 0.0, height: 2.5.h),
                    CustomTextField(
                      controller: signinInCubit.passwordController,
                      keyboardtype: TextInputType.name,
                      hinttext: "Passowrd".tr(context),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 1.3.h, bottom: 2.2.h),
                          child: InkWell(
                            onTap: () {
                              routingPage(context, ForgetPassword());
                            },
                            child: Text(
                              'forget_password'.tr(context),
                              style: TextStyle(fontSize: 8.sp),
                            ),
                          ),
                        ),
                      ],
                    ),
                    CustomElevatedButton(
                        borderColor:
                            AppColors.splashGradientYello.withOpacity(0.4),
                        titlebutton: 'sign_in'.tr(context),
                        onPressed: () {
                          if (signinInCubit.selectedAccountType == "Student") {
                            AppSharedPreferences.saveMode("Student");
                            routingPage(context, const HomeScreen());
                          } else if (signinInCubit.selectedAccountType ==
                              "Supervisor") {
                            
                            AppSharedPreferences.saveMode("Supervisor");

                            routingPage(context, Supervisor());
                          } else {
                            customMotionToast(height: 8.h ,width: 50.w,
                                context: context,
                                description: "Please_choose_your_account_type"
                                    .tr(context));
                          }
                        }),
                    SizedBox(width: 0.0, height: 1.5.h),
                    CustomElevatedButton(
                        borderColor: AppColors.purple.withOpacity(0.4),
                        background:
                            AppColors.splashGradientYello.withOpacity(0.5),
                        titlebutton: "Continue_without_logging_in".tr(context),
                        onPressed: () {
                            AppSharedPreferences.saveMode("Gust");

                          routingPage(context, HomeScreen());
                        }),
                    SizedBox(width: 0.0, height: 1.h),
                    Align(
                      alignment: AlignmentDirectional.centerStart,
                      child: InkWell(
                        onTap: () {
                          routingPage(context, SignUp());
                        },
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 1.h),
                          child: Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                    text:
                                        "${"dont_have_account?".tr(context)} ",
                                    style: TextStyle(fontSize: 9.sp)),
                                TextSpan(
                                    text: "Create_account".tr(context),
                                    style: TextStyle(
                                        fontSize: 9.sp,
                                        fontWeight: FontWeight.w500))
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }),
          ),
        ));
  }
}
