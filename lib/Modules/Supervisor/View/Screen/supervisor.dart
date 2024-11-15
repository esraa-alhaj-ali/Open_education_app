import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:open_Education/Localization/AppLocalization.dart';
import 'package:open_Education/Modules/Auth/Cubit/cubit/sign_in_cubit.dart';
import 'package:open_Education/Modules/Supervisor/Cubit/sign_in_state.dart';
import 'package:open_Education/Modules/Supervisor/View/Screen/exam_regulation.dart';
import 'package:open_Education/Modules/Supervisor/View/Screen/names_entry.dart';
import 'package:open_Education/Modules/Widgets/app_scaffolds.dart';
import 'package:open_Education/Modules/Widgets/custom_elevatedButton.dart';
import 'package:open_Education/constant/appColors.dart';
import 'package:open_Education/constant/textStyles.dart';
import 'package:open_Education/utils/global_functions.dart';
import 'package:sizer/sizer.dart';
import '../../../../Localization/LocalizationPopUpWidget.dart';
import '../../../../constant/Images-Routes.dart';
import '../../../Auth/Cubit/States/create_account_states.dart';
import '../../../Widgets/custom_TextField.dart';

class Supervisor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextEditingController firstNameController = TextEditingController();
    TextEditingController lastNameController = TextEditingController();
    TextEditingController fatherNameController = TextEditingController();
    TextEditingController motherNameController = TextEditingController();
    Widget size = SizedBox(height: 2.0.h);
    return AppScaffolds.pagesScaffold(
        context: context,
        appbarTitle: "Supervisor".tr(context),
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: 4.w),
          child: SingleChildScrollView(
            child: BlocProvider(
              create: (BuildContext context) {
                return SignInCubit();
              },
              child: BlocBuilder<SignInCubit,CreateAccountStates>
                (
              builder: (BuildContext context, state)
              {
               if (state is SignInLoading) {
                 return const Center(child: CircularProgressIndicator());
               }
               return Form(
                 key: SignInCubit.supervisorSignIn,
                 child: Column(
                   children: [
                     size,
                     Image.asset(
                       Images.damascusUniversityLogo,
                       width: 25.w,
                     ),
                     size,
                     Container(
                       alignment: AlignmentDirectional.centerStart,
                       child: Text(
                         "Supervisor".tr(context),
                         style: AppTextStyles.titlesMeduim.copyWith(
                             color: AppColors.purple,
                             fontWeight: FontWeight.bold),
                       ),
                     ),
                     size,
                     CustomTextField(
                       controller: firstNameController,
                       keyboardtype: TextInputType.name,
                       hinttext: "first_name".tr(context),
                     ),
                     size,
                     CustomTextField(
                       controller: lastNameController,
                       keyboardtype: TextInputType.name,
                       hinttext: "last_name".tr(context),
                     ),
                     size,
                     CustomTextField(
                       controller: fatherNameController,
                       keyboardtype: TextInputType.name,
                       hinttext: "father_name".tr(context),
                     ),
                     size,
                     CustomTextField(
                       controller: motherNameController,
                       keyboardtype: TextInputType.name,
                       hinttext: "mother_name".tr(context),
                     ),
                     SizedBox(height: 7.h),
                     CustomElevatedButton(
                         titlebutton: "Name_entry".tr(context),
                         onPressed: () {
                           routingPage(context, NameEntry());
                         }),
                     size,
                     CustomElevatedButton(
                         titlebutton: "exam_regulation".tr(context),
                         onPressed: () {
                           routingPage(context, ExamRegulation());
                         }),
                     size,
                     CustomElevatedButton(
                         titlebutton: "Log_out".tr(context),
                         onPressed: () {
                           Navigator.pop(context);
                         },
                         background: Colors.white,
                         colorText: Colors.black
                     )
                   ],
                 ),
               );
             })
            ),
          ),
        ));
  }
}
