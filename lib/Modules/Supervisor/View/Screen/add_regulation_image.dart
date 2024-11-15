import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:open_Education/Localization/AppLocalization.dart';
import 'package:open_Education/Modules/Auth/View/Widget/image_card_to_add.dart';
import 'package:open_Education/Modules/Supervisor/View/Screen/check_list_public.dart';
import 'package:open_Education/Modules/Widgets/app_scaffolds.dart';
import 'package:open_Education/Modules/Widgets/custom_elevatedButton.dart';
import 'package:open_Education/constant/Images-Routes.dart';
import 'package:open_Education/constant/textStyles.dart';
import 'package:open_Education/utils/global_functions.dart';
import 'package:sizer/sizer.dart';

class AddRegulationImage extends StatelessWidget {
  AddRegulationImage({Key? key}) : super(key: key);
  XFile? detectionImage;
  @override
  Widget build(BuildContext context) {
    return AppScaffolds.pagesScaffold(
        context: context,
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 4.w),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                SizedBox(width: 0.0, height: 3.h),
                Image.asset(
                  Images.damascusUniversityLogo,
                  width: 30.w,
                ),
                SizedBox(width: 0.0, height: 8.h),
                Align(
                    alignment: AlignmentDirectional.centerStart,
                    child: Text(
                        style: AppTextStyles.titlesMeduim
                            .copyWith(fontWeight: FontWeight.w500),
                        "Regulation_image".tr(context))),
                SizedBox(width: 0.0, height: 1.h),
                ImageCardToAdd(
                    isInHome: false,
                    numberOfImage: 6,
                    isSquare: false,
                    xfileImage: detectionImage,
                    photoName: "Regulation_image".tr(context)),
                SizedBox(width: 0.0, height: 23.h),
                CustomElevatedButton(titlebutton: "done", onPressed: () {
                  routingPage(context, CheckListPublicWithQrCode());
                })
              ],
            ),
          ),
        ),
        appbarTitle: "add_an_exam_Regulation".tr(context));
  }
}
