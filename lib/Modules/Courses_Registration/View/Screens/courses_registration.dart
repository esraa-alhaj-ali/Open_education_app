import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:open_Education/Localization/AppLocalization.dart';
import 'package:open_Education/constant/appColors.dart';
import 'package:open_Education/model/degree_statistics.dart';
import 'package:open_Education/Modules/Payments/Views/Screens/payments.dart';
import 'package:open_Education/Modules/Widgets/alert_dialog.dart';
import 'package:open_Education/Modules/Widgets/app_scaffolds.dart';
import 'package:open_Education/Modules/Widgets/custom_elevatedButton.dart';
import 'package:open_Education/Modules/Widgets/custom_TextField.dart';
import 'package:open_Education/Modules/Widgets/custom_table.dart';
import 'package:open_Education/Modules/Personal&Academic_Data/View/Screens/personal_data.dart';
import 'package:sizer/sizer.dart';
import '../../../../constant/textStyles.dart';
import '../../../../utils/global_functions.dart';
import '../../Cubit/courses_registration_cubit.dart';
import '../../Cubit/courses_registration_state.dart';

class CoursesRegistration extends StatefulWidget {
  CoursesRegistration({super.key});

  @override
  State<CoursesRegistration> createState() => _CoursesRegistrationState();
}

class _CoursesRegistrationState extends State<CoursesRegistration> {
  final TextEditingController infoaccountcontroller = TextEditingController();
  bool? isChecked = false;
  List<DegreeStatistic>? degrees;

  @override
  void initState() {
    // TODO: implement initState
    degrees = DegreeStatistic.generate();
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffolds.pagesScaffold(
        appbarTitle: "Courses_Registration".tr(context),
        context: context,
        body: Container(
          margin: EdgeInsets.symmetric(
            horizontal: 4.w,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.symmetric(vertical: 1.h),
                    child: Text("academic_year(first)".tr(context),
                        style: AppTextStyles.titlesMeduim
                            .copyWith(height: 0.3.h))),
                Align(alignment: Alignment.center,
                  child: CustomTable(
                    columnWidths: [14.w, 22.w, 18.w, 20.w, 13.w],
                    header: RowData([
                      "ID".tr(context),
                      "Course_name".tr(context),
                      "register_count".tr(context),
                      "registration_fees".tr(context)
                    ], [
                      const SizedBox()
                    ]),
                    rows: degrees!
                        .map((e) => RowData(
                              [e.id, e.coursename, e.degree, e.result],
                              [
                                Checkbox(
                                  activeColor: AppColors.purple,
                                  onChanged: (value) {
                                    setState(() {
                                      e.isChecked = value!;
                                    });
                                  },
                                  value: e.isChecked,
                                )
                              ],
                            ))
                        .toList(),
                  ),
                ),
                SizedBox(
                  height: 1.h,
                ),
                text("total_amount".tr(context)),
                CustomTextField(
                  controller: infoaccountcontroller,
                  keyboardtype: TextInputType.name,
                  hinttext: "",
                ),
                text("allowed_discount_type".tr(context)),
                CustomTextField(
                  controller: infoaccountcontroller,
                  keyboardtype: TextInputType.name,
                  hinttext: "",
                ),
                SizedBox(
                  height: 5.h,
                ),
                BlocProvider(
                  create: (BuildContext context) {
                    return CoursesRegistrationCubit();
                  },
                  child: BlocBuilder<CoursesRegistrationCubit,CoursesRegistrationState>
                    (
                    builder: (BuildContext context, state)
                  {


                    if(state is CoursesRegistrationLoadingState) {
                      return const Center(child: CircularProgressIndicator());
                    }
                    return CustomElevatedButton(
                            titlebutton: 'registration'.tr(context),
                            onPressed: () {
                              // context.read<CoursesRegistrationCubit>().registerCourses();
                              showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialogBox(
                                        text:// jalal
                                            "to finalize courses registration please go to the payment interface to settle the outstanding fees".tr(context),
                                        ontap: () {
                                          routingPage(context, Payments());
                                        },
                                        titleButton: "Payment_of_fees".tr(context));
                                  });
                            },
                          );
                  },

                  ),
                  // child: BlocConsumer<CoursesRegistrationCubit,
                  //     CoursesRegistrationState>(
                  //
                  //       listener: (context, state) {
                  //   // if (state is CoursesRegistrationSuccessfulState) {
                  //   //   showDialog(
                  //   //       context: context,
                  //   //       builder: (context) {
                  //   //         return AlertDialogBox(
                  //   //             text:
                  //   //                 "t finalize courses registration please gthe payment interface to settle the outstanding fees",
                  //   //             ontap: () {
                  //   //               routingPage(context, Payments());
                  //   //             },
                  //   //             titleButton: "Payment_of_fees".tr(context));
                  //   //       });
                  //   // }
                  // },
                  //  builder: (context, state) {
                  //   if (state is CoursesRegistrationLoadingState) {
                  //     return const Center(child: CircularProgressIndicator());
                  //   }
                  //   return CustomElevatedButton(
                  //     titlebutton: 'registration'.tr(context),
                  //     onPressed: () {
                  //       // context.read<CoursesRegistrationCubit>().registerCourses();
                  //       showDialog(
                  //           context: context,
                  //           builder: (context) {
                  //             return AlertDialogBox(
                  //                 text:// jalal
                  //                     "to finalize courses registration please go to the payment interface to settle the outstanding fees".tr(context),
                  //                 ontap: () {
                  //                   routingPage(context, Payments());
                  //                 },
                  //                 titleButton: "Payment_of_fees".tr(context));
                  //           });
                  //     },
                  //   );
                  // }),
                ),
                Padding(padding: EdgeInsets.only(bottom: 10.h))
              ],
            ),
          ),
        ));
  }
}
