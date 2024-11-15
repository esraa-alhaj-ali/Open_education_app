import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:open_Education/Localization/AppLocalization.dart';
import 'package:open_Education/Modules/Advertisement/View/Widget/advertisements_card.dart';
import 'package:open_Education/Modules/Widgets/app_scaffolds.dart';
 import 'package:open_Education/constant/Images-Routes.dart';
import 'package:sizer/sizer.dart';

class AdvertisementsScreen extends StatelessWidget {
  AdvertisementsScreen({Key? key}) : super(key: key);
  final List list = [
    "  A Chinese delegation visited the University of Damascus and signed a memorandum of understanding. After their visit to the university, the Chinese delegation visited the Faculty of Law to learn about it due to its long-standing reputation. Dr. Sinan Ammar, Dean of the Faculty of Law.",
    "أرفدت كلية الهندسة المعلوماتية السوق المحلية والعالمية بمهندسين متميزين تركوا بصماتهم في كل مكان، مما جعل من اسم كلية الهندسة المعلوماتية في جامعة دمشق علامة فارقة في سوق العمل عندما توضع على السيرة الذاتية. وسنسعى دوماً للحفاظ على هذه العلامة الفارقة المميزة، ونعمل على جعلها أكثر تميزاً من خلال بذل الجهد في رفع سوية خريجي كليتنا،    "
  ];
  @override
  Widget build(BuildContext context) {
    return AppScaffolds.pagesScaffold(
        context: context,
        appbarTitle: "Advertisements".tr(context),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 4.w),
          child: ListView(
            children: List.generate(
                2,
                (index) => AdvertisementsCard(
                    textADS: list[index],
                    image: "${Images.rootImages}/temp${index + 3}.png")),
          ),
        ));
  }
}
