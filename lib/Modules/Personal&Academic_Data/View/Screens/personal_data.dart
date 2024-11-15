
import 'package:flutter/material.dart';
import 'package:open_Education/Localization/AppLocalization.dart';
import 'package:open_Education/Modules/Widgets/app_scaffolds.dart';
import 'package:open_Education/Modules/Widgets/custom_TextField.dart';
import 'package:open_Education/Modules/Personal&Academic_Data/View/Widget/show_all.dart';
import 'package:open_Education/constant/textStyles.dart';
import 'package:sizer/sizer.dart';
import '../../../../constant/Images-Routes.dart';



class PersonalData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget size =   SizedBox(height:1.h);
    final TextEditingController infoaccountcontroller = TextEditingController();
    return AppScaffolds.pagesScaffold (appbarTitle:"Personal_Data".tr(context) ,
        context: context,
        body: Container(
            margin: EdgeInsets.symmetric(
              horizontal: 4.w,
            ),
            child: Column(
                children: [
               Expanded(
                child: ListView(
                    children: [
                      SizedBox(height: 2.h),
                  Column(
                    children: [
                      CircleAvatar(radius: 10.w,
                        child: Image.asset(Images.damascusUniversityLogo),
                      ),
                        Text("Ahmad",style:AppTextStyles.secondTitle ,)
                    ],
                  ),
                  text("Identity_Photo".tr(context)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(
                        Images.damascusUniversityLogo,width: 34.w,
                      ),
                      Image.asset(
                        Images.damascusUniversityLogo,width: 34.w,
                      )
                    ],
                  ),
                  text("account_info".tr(context)),
                     CustomTextField(
                            readonly: true,
                    controller: infoaccountcontroller,
                     keyboardtype: TextInputType.name,
                        hinttext: "user_name".tr(context),
                     ),
                     size,
                      ShowAll(
                        children: [
                          CustomTextField(
                            readonly: true,
                            controller: infoaccountcontroller,
                            keyboardtype: TextInputType.name,
                            hinttext: "exam_number".tr(context),
                          ),
                  size,
                          CustomTextField(
                            readonly: true,
                            controller: infoaccountcontroller,
                            keyboardtype: TextInputType.name,
                            hinttext: "password".tr(context),
                          ),
                          ],),
                  text("Identity_information_(Arabic)".tr(context)),
                  CustomTextField(
                    readonly: true,
                    controller: infoaccountcontroller,
                    keyboardtype: TextInputType.name,
                    hinttext: "first_name".tr(context),
                  ),
                  size,
                  CustomTextField(
                    readonly: true,
                    controller: infoaccountcontroller,
                    keyboardtype: TextInputType.name,
                    hinttext: "last_name".tr(context),
                  ),
                  size,
                  Align(
                      alignment: AlignmentDirectional.centerEnd,
                      child: ShowAll(
                        children: [
                        GridView(
                          physics: NeverScrollableScrollPhysics(),
                          scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          gridDelegate:SliverGridDelegateWithFixedCrossAxisCount
                            (crossAxisCount: 2,
                            mainAxisSpacing: 1.h,
                            crossAxisSpacing: 1.w,
                            childAspectRatio: 4.0,
                          ),
                          children: [
                            CustomTextField(
                              readonly: true,
                              controller: infoaccountcontroller,
                              keyboardtype: TextInputType.name,
                              hinttext: "father_name".tr(context),),
                            CustomTextField(
                              readonly: true,
                              controller: infoaccountcontroller,
                              keyboardtype: TextInputType.name,
                              hinttext: "mother_name".tr(context),
                            ),
                            CustomTextField(
                              readonly: true,
                              controller: infoaccountcontroller,
                              keyboardtype: TextInputType.name,
                              hinttext: "birthday_place".tr(context),
                            ),
                            CustomTextField(
                              readonly: true,
                              controller: infoaccountcontroller,
                              keyboardtype: TextInputType.name,
                              hinttext: "birthday_date".tr(context),
                            ),
                            CustomTextField(
                              readonly: true,
                              controller: infoaccountcontroller,
                              keyboardtype: TextInputType.name,
                              hinttext: "registration_place".tr(context),
                            ),
                            CustomTextField(
                              readonly: true,
                              controller: infoaccountcontroller,
                              keyboardtype: TextInputType.name,
                              hinttext: "registration_number".tr(context),
                            ),
                            CustomTextField(
                              readonly: true,
                              controller: infoaccountcontroller,
                              keyboardtype: TextInputType.name,
                              hinttext: "gender".tr(context),
                            ),  CustomTextField(
                              readonly: true,
                              controller: infoaccountcontroller,
                              keyboardtype: TextInputType.name,
                              hinttext: "nationality".tr(context),
                            ),
                            CustomTextField(
                              readonly: true,
                              controller: infoaccountcontroller,
                              keyboardtype: TextInputType.name,
                              hinttext: "Recruitment_Division".tr(context),
                            ),
                          ],),
                        ],
                      )),

                  text("Identity_information_(English)".tr(context)),
                  CustomTextField(
                    readonly: true,
                    controller: infoaccountcontroller,
                    keyboardtype: TextInputType.name,
                    hinttext: "Name",
                  ),
                  size,
                  CustomTextField(
                      readonly: true,
                    controller: infoaccountcontroller,
                    keyboardtype: TextInputType.name,
                    hinttext: "Father Name"
                  ),
                  size,
                  Align(
                      alignment: AlignmentDirectional.centerEnd,
                      child: ShowAll(
                        children: [
                       GridView(
                         physics: const NeverScrollableScrollPhysics(),
                         scrollDirection: Axis.vertical,
                         shrinkWrap: true,
                         gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount
                           (crossAxisCount: 2,
                           mainAxisSpacing: 1.h,
                           crossAxisSpacing: 1.w,
                           childAspectRatio: 4.0,
                         ),
                         children: [
                           CustomTextField(
                             readonly: true,
                             controller: infoaccountcontroller,
                             keyboardtype: TextInputType.name,
                             hinttext: "Mother Name",
                           ),
                           CustomTextField(
                             readonly: true,
                             controller: infoaccountcontroller,
                             keyboardtype: TextInputType.name,
                             hinttext: "Birthday Date",
                           ),

                         ],
                       )
                      ],)),

                  text("connect_info".tr(context)),
                  CustomTextField(
                    readonly: true,
                    controller: infoaccountcontroller,
                    keyboardtype: TextInputType.name,
                    hinttext: "phone_number".tr(context),
                  ),
                  size,
                  CustomTextField(
                    readonly: true,
                    controller: infoaccountcontroller,
                    keyboardtype: TextInputType.name,
                    hinttext: "telephone_number".tr(context),
                  ),
                  Align(
                      alignment: AlignmentDirectional.centerEnd,
                      child: ShowAll(
                        children: [
                          Container()
                          ],
                      )),
                  text("certificate_info".tr(context)),
                  CustomTextField(
                    readonly: true,
                    controller: infoaccountcontroller,
                    keyboardtype: TextInputType.name,
                    hinttext: "type_of_certificate".tr(context),
                  ),
                  size,
                  CustomTextField(
                    readonly: true,
                    controller: infoaccountcontroller,
                    keyboardtype: TextInputType.name,
                    hinttext: "section".tr(context),
                  ),
                  size,
                  Align(
                      alignment: AlignmentDirectional.centerEnd,
                      child: ShowAll(
                        children: [
                       GridView(
                         physics: NeverScrollableScrollPhysics(),
                         scrollDirection: Axis.vertical,
                         shrinkWrap: true,
                         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount
                           (crossAxisCount: 2,
                           mainAxisSpacing: 1.h,
                           crossAxisSpacing: 1.w,
                           childAspectRatio: 4.0,
                         ),
                         children: [
                           CustomTextField(
                             readonly: true,
                             controller: infoaccountcontroller,
                             keyboardtype: TextInputType.name,
                             hinttext: "city".tr(context),
                           ),
                           CustomTextField(
                             readonly: true,
                             controller: infoaccountcontroller,
                             keyboardtype: TextInputType.name,
                             hinttext: "exam_number".tr(context),
                           ),
                           CustomTextField(
                             readonly: true,
                             controller: infoaccountcontroller,
                             keyboardtype: TextInputType.name,
                             hinttext: "granting_authority".tr(context),
                           ),
                           CustomTextField(
                             readonly: true,
                             controller: infoaccountcontroller,
                             keyboardtype: TextInputType.name,
                             hinttext: "language".tr(context),
                           ),
                           CustomTextField(
                             readonly: true,
                             controller: infoaccountcontroller,
                             keyboardtype: TextInputType.name,
                             hinttext: "document_image".tr(context),
                           ),
                         ],
                       ),
                      ],)),
              size,  ]),
              ),
            ])),
      ) ;
  }
}

Widget text(String text) {
  return Text(
    text,
    style: AppTextStyles.titlesMeduim.copyWith(height: 0.35.h),
  );
}
