import 'package:flutter/material.dart';
import 'package:open_Education/Localization/AppLocalization.dart';
import 'package:open_Education/Modules/Auth/Cubit/cubit/create_account_cubit.dart';
import 'package:open_Education/Modules/Auth/View/Widget/image_card_to_add.dart';
import 'package:open_Education/Modules/Home/View/Screens/home_screen.dart';
import 'package:open_Education/Modules/Widgets/alert_dialog.dart';
import 'package:open_Education/Modules/Widgets/custom_elevatedButton.dart';
import 'package:open_Education/constant/appColors.dart';
import 'package:open_Education/constant/textStyles.dart';
import 'package:open_Education/utils/global_functions.dart';
import 'package:sizer/sizer.dart';

class SignUpStepFive extends StatelessWidget {
  const SignUpStepFive({super.key});

  @override
  Widget build(BuildContext context) {
    CreateAccountCubit createAccountCubit = CreateAccountCubit.get(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Upload_the_required_files'.tr(context),
          style: AppTextStyles.titlesMeduim,
        ),
        SizedBox(width: 0.0, height: 1.h),
        Expanded(
            child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: Text(
                      style: AppTextStyles.titlesMeduim
                          .copyWith(fontWeight: FontWeight.w500),
                      "personal_photo".tr(context))),
              ImageCardToAdd(
                  isInHome: true,
                  numberOfImage: 1,
                  isSquare: true,
                  xfileImage: createAccountCubit.personalPhoto,
                  photoName: "personal_photo".tr(context)),
              Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: Text(
                      style: AppTextStyles.titlesMeduim
                          .copyWith(fontWeight: FontWeight.w500),
                      "identity_photo_front".tr(context))),
              ImageCardToAdd(
                  isInHome: true,
                  numberOfImage: 2,
                  isSquare: false,
                  xfileImage: createAccountCubit.identityPhotoFront,
                  photoName: "identity_photo_front".tr(context)),
              Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: Text(
                      style: AppTextStyles.titlesMeduim
                          .copyWith(fontWeight: FontWeight.w500),
                      "identity_photo_back".tr(context))),
              ImageCardToAdd(
                  isInHome: true,
                  numberOfImage: 3,
                  isSquare: false,
                  xfileImage: createAccountCubit.identityPhotoBack,
                  photoName: "identity_photo_back".tr(context)),

              Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: Text(
                      style: AppTextStyles.titlesMeduim
                          .copyWith(fontWeight: FontWeight.w500),
                      "certificate_photo".tr(context))),

              ImageCardToAdd(
                  isInHome: true,
                  numberOfImage: 4,
                  isSquare: false,
                  xfileImage: createAccountCubit.certificatePhoto,
                  photoName: "certificate_photo".tr(context)),
              Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: Text(
                      style: AppTextStyles.titlesMeduim
                          .copyWith(fontWeight: FontWeight.w500),
                      "graduation_Certificate_Photo".tr(context))),
              ImageCardToAdd(
                  isInHome: true,
                  numberOfImage: 5,
                  isSquare: false,
                  xfileImage: createAccountCubit.graduationCertificatePhoto,
                  photoName: "graduation_Certificate_Photo".tr(context)),
              // فايل بيكر

              Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: Text(
                      style: AppTextStyles.titlesMeduim
                          .copyWith(fontWeight: FontWeight.w500),
                      "Transcript_file".tr(context))),

              Container(
                  margin: EdgeInsets.only(top: 1.h, bottom: 2.5.h),
                  decoration: BoxDecoration(
                      color: AppColors.grey.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(1.w)),
                  height: 40.w,
                  width: 40.w,
                  child: createAccountCubit.isFileTranscriptAdded
                      ? createAccountCubit.childOfTransparentFilePicker
                      : InkWell(
                          splashColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            await createAccountCubit.addTransprentFile();
                          },
                          child: const Icon(
                            Icons.add,
                            color: AppColors.purple,
                          ))),

              Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: Text(
                      style: AppTextStyles.titlesMeduim
                          .copyWith(fontWeight: FontWeight.w500),
                      "discount_documents_photo".tr(context))),

              ImageCardToAdd(
                  isInHome: true,
                  numberOfImage: 6,
                  isSquare: false,
                  xfileImage: createAccountCubit.discountDocumentPhoto,
                  photoName: "discount_documents_photo".tr(context)),

              SizedBox(width: 0.0, height: 2.h),
              CustomElevatedButton(
                titlebutton: "enter_data".tr(context),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialogBox(
                        text:
                            "All_information entered is correct and identical to the copies of the documents that were attached, under penalty of cancellation of the registration".tr(context),
                        ontap: () {
                          removeUntilRoutingPage(context, HomeScreen());
                        },
                        titleButton: "confirm_data".tr(context)),
                  );
                },
              ),
              SizedBox(width: 0.0, height: 3.h)
            ],
          ),
        ))
      ],
    );
  }
}
