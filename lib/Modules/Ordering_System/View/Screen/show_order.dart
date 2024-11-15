import 'package:flutter/material.dart';
import 'package:open_Education/Localization/AppLocalization.dart';
import 'package:open_Education/constant/Images-Routes.dart';
import 'package:open_Education/constant/box_shadow.dart';
import 'package:sizer/sizer.dart';
import '../../../Widgets/app_scaffolds.dart';

class ShowOrder extends StatefulWidget {
  @override
  State<ShowOrder> createState() => _ShowOrderState();
}

class _ShowOrderState extends State<ShowOrder> {
  @override
  Widget build(BuildContext context) {
    return AppScaffolds.pagesScaffold(
        context: context,
        appbarTitle: "Ordering_System".tr(context),
        body: Container(
          margin: EdgeInsets.symmetric(
            horizontal: 4.w,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(width: 0.0, height: 1.h),
                Text('name_of_order'.tr(context)),
                // Container(
                //     margin: EdgeInsets.symmetric(vertical: 2.h),
                //     child:

                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceAround,
                //   children: [
                //     CustomElevatedButton(
                //       titlebutton:"Your_order".tr(context), onPressed: (){
                //         routingPage(context,OrderingSystem());
                //       },    width: 7.w,
                //         hight: 0.8.h,background:AppColors.purple),
                //     CustomElevatedButton(
                //       titlebutton:"New_order".tr(context), onPressed: (){
                //       routingPage(context,OrderingSystem());
                //     }    ,width: 7.w,
                //       hight: 0.8.h,background:AppColors.purple,)
                //   ],
                // )),
                // SizedBox(height: 2.h,),
                // Container(
                //   alignment: Alignment.topLeft,
                //   child: Text("Order".tr(context),style:AppTextStyles.titlesMeduim,)),
                SizedBox(
                  height: 5.h,
                ),
                Container(
                    decoration: BoxDecoration(
                        boxShadow: boxShadow,
                        borderRadius: BorderRadius.circular(2.w)),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(2.w),
                        child: Image.asset("${Images.rootImages}/temp10.png"))),
              ],
            ),
          ),
        ));
  }
}
