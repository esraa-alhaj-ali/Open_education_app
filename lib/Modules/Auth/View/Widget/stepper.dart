import 'package:easy_stepper/easy_stepper.dart';
import 'package:flutter/material.dart';
import 'package:open_Education/Modules/Auth/Cubit/cubit/create_account_cubit.dart';
import 'package:open_Education/constant/appColors.dart';
import 'package:open_Education/constant/textStyles.dart';
import 'package:sizer/sizer.dart';

class CustomStepper extends StatelessWidget {
  const CustomStepper({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    int activeStep = CreateAccountCubit.get(context).lastIndex;
    return EasyStepper(
      onStepReached: (index) {
        CreateAccountCubit.get(context).previousSteps(index,context);
        print(index);
      },
      enableStepTapping: true,
      internalPadding: 0,
      activeStep: activeStep,
      stepShape: StepShape.circle,
      borderThickness: 3,
      disableScroll: true,

      activeStepBorderColor: const Color.fromARGB(255, 77, 253, 83),

      activeStepBackgroundColor: Colors.green.shade100,
      finishedStepBorderColor: Colors.purple,
      finishedStepBackgroundColor: AppColors.purple.withOpacity(0.9),
      showLoadingAnimation: false,
      steps: [
        EasyStep(
          customStep: Opacity(
            opacity: activeStep >= 0 ? 0.8 : 0.3,
            child: Container(
              color: AppColors.grey.withOpacity(0.5),
              alignment: Alignment.center,
              child: Text(
                "1",
                style: AppTextStyles.secondTitle
                    .copyWith(fontSize: 12.sp)
                    .copyWith(color: Colors.black.withOpacity(0.8)),
              ),
            ),
          ),
        ),
        EasyStep(
          customStep: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Opacity(
              opacity: activeStep >= 1 ? 0.8 : 0.3,
              child: Container(
                color: AppColors.grey.withOpacity(0.5),
                alignment: Alignment.center,
                child: Text(
                  "2",
                  style: AppTextStyles.secondTitle
                      .copyWith(fontSize: 12.sp)
                      .copyWith(color: Colors.black.withOpacity(0.8)),
                ),
              ),
            ),
          ),
        ),
        EasyStep(
          customStep: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Opacity(
              opacity: activeStep >= 2 ? 0.8 : 0.3,
              child: Container(
                color: AppColors.grey.withOpacity(0.5),
                alignment: Alignment.center,
                child: Text(
                  "3",
                  style: AppTextStyles.secondTitle
                      .copyWith(fontSize: 12.sp)
                      .copyWith(color: Colors.black.withOpacity(0.8)),
                ),
              ),
            ),
          ),
        ),
        EasyStep(
          customStep: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Opacity(
              opacity: activeStep >= 3 ? 0.8 : 0.3,
              child: Container(
                color: AppColors.grey.withOpacity(0.5),
                alignment: Alignment.center,
                child: Text(
                  "4",
                  style: AppTextStyles.secondTitle
                      .copyWith(fontSize: 12.sp)
                      .copyWith(color: Colors.black.withOpacity(0.8)),
                ),
              ),
            ),
          ),
        ),
        EasyStep(
          customStep: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Opacity(
              opacity: activeStep >= 4 ? 0.8 : 0.3,
              child: Container(
                color: AppColors.grey.withOpacity(0.5),
                alignment: Alignment.center,
                child: Text(
                  "5",
                  style: AppTextStyles.secondTitle
                      .copyWith(fontSize: 12.sp)
                      .copyWith(color: Colors.black.withOpacity(0.8)),
                ),
              ),
            ),
          ),
        ),
      ],
      // onStepReached: (index) => setState(() => activeStep = index),
    );
  }
}
