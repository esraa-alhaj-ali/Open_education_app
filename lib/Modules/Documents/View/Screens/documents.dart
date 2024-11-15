import 'package:flutter/material.dart';
import 'package:open_Education/Localization/AppLocalization.dart';
import 'package:open_Education/Modules/Widgets/custom_dropdown_button.dart';
import 'package:open_Education/Modules/Widgets/custom_elevatedButton.dart';
import 'package:open_Education/Modules/Widgets/custom_TextField.dart';
import 'package:open_Education/constant/appColors.dart';
import 'package:open_Education/Modules/Documents/View/Screens/document_details.dart';
import 'package:open_Education/utils/global_functions.dart';
import 'package:open_Education/Modules/Widgets/app_scaffolds.dart';
import 'package:sizer/sizer.dart';


class Documents extends StatelessWidget {
  Documents({super.key});

  final List<String> listDocuments = [
    "نوع الوثائق",
    "مصدقة تخرج",
    "كشف علامات"
  ];

  final TextEditingController _controllerDucomentNumber =
      TextEditingController();

  final TextEditingController _controllerDucomentDate = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AppScaffolds.pagesScaffold(
        appbarTitle: "documents".tr(context),
        context: context,
        body: Column(
          children: <Widget>[
            Expanded(
                child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.w),
              child: SingleChildScrollView(
                  child: Column(
                children: [
                  SizedBox(width: 0.0, height: 2.h),
                  CustomDropdownButton(usagePosition: 4
                  ,
                      items: listDocuments,
                      hint: 'Type_of_documents'.tr(context)),
                  SizedBox(width: 0.0, height: 5.h),
                  CustomTextField(
                      controller: _controllerDucomentNumber,
                      keyboardtype: TextInputType.number,
                      hinttext: "Document_number".tr(context)),
                  SizedBox(width: 0.0, height: 5.h),
                  CustomTextField(
                    hinttext: "date_of_document".tr(context),
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
                                _controllerDucomentDate.text =
                                    "${value.year}:${value.month}:${value.day}"
                              }
                            else
                              {_controllerDucomentDate.text = ""}
                          });
                    },
                    keyboardtype: TextInputType.text,
                    controller: _controllerDucomentDate,

                    iconsuffix: Icon(
                      Icons.date_range_outlined,
                      size: 7.w,
                      color: AppColors.purple,
                    ),
                    // LableText: "Select Data",
                    validate: (value) {
                      if (value!.isEmpty) {
                        return "Birthday must not be Empty";
                      }
                      return null;
                    },
                  ),
                  SizedBox(width: 0.0, height: 10.h),
                  CustomElevatedButton(
                      titlebutton: "Search",
                      onPressed: () {
                        routingPage(
                            context,
                            DocumentsDetails(
                              selectedType: "backend",
                            ));
                      })
                ],
              )),
            ))
          ],
        ));
  }
}
