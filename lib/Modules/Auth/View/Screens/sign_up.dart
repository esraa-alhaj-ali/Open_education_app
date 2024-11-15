import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:open_Education/Localization/AppLocalization.dart';
import 'package:open_Education/Modules/Auth/Cubit/States/create_account_states.dart';
import 'package:open_Education/Modules/Auth/Cubit/cubit/create_account_cubit.dart';
import 'package:open_Education/Modules/Auth/View/Screens/sign_up_step_1.dart';
import 'package:open_Education/Modules/Auth/View/Screens/sign_up_step_2.dart';
import 'package:open_Education/Modules/Auth/View/Screens/sign_up_step_3.dart';
import 'package:open_Education/Modules/Auth/View/Screens/sign_up_step_4.dart';
import 'package:open_Education/Modules/Auth/View/Screens/sign_up_step_5.dart';
import 'package:open_Education/Modules/Auth/View/Widget/stepper.dart';
import 'package:open_Education/constant/Images-Routes.dart';
import 'package:open_Education/constant/textStyles.dart';
import 'package:sizer/sizer.dart';

class SignUp extends StatelessWidget {
  const SignUp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: SafeArea(
          child: BlocProvider(
        create: (context) => CreateAccountCubit(),
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 4.w,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              SizedBox(width: 0.0, height: 2.5.h),
              Text(
                "Create_an_account".tr(context),
                style: AppTextStyles.titlesMeduimTable,
              ),
              SizedBox(width: 0.0, height: 2.5.h),
              Expanded(
                child: BlocConsumer<CreateAccountCubit, CreateAccountStates>(
                  builder: (context, state) {
                    CreateAccountCubit accountCubit =
                        CreateAccountCubit.get(context);

                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CustomStepper(),
                        Expanded(
                          child: PageView(
                              physics: const NeverScrollableScrollPhysics(),
                              controller: accountCubit.pageController,
                              children: [
                                SignUpStepOne(),
                                SignUpStepTow(),
                                SignUpStepThree(),
                                SignUpStepFour(),
                                SignUpStepFive(),
                              ]),
                        )
                      ],
                    );
                  },
                  listener: (context, state) {
                    print(state);
                  },
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}

List<Widget> steps = [];
