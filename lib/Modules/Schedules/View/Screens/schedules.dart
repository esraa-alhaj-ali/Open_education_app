import 'package:flutter/material.dart';
import 'package:open_Education/Localization/AppLocalization.dart';
import 'package:open_Education/Modules/Schedules/View/Screens/schedule_details.dart';
import 'package:open_Education/Modules/Widgets/stack_for_cards.dart';
import 'package:open_Education/constant/Images-Routes.dart';
import 'package:open_Education/utils/global_functions.dart';
import 'package:open_Education/Modules/Widgets/app_scaffolds.dart';
  
import 'package:sizer/sizer.dart';

class ShowSchedules extends StatelessWidget {
  const ShowSchedules({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Orientation orientation = MediaQuery.of(context).orientation;
    return AppScaffolds.pagesScaffold(
        appbarTitle: "Open_education_schedules".tr(context),
        context: context,
        body: Padding(
          padding:   EdgeInsets.symmetric(horizontal: 4.w ),
          child: ListView(
            children: <Widget>[
              SizedBox(width: 0.0, height: 2.h),
              GridView.builder(
                  physics:const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio:
                          orientation == Orientation.portrait ? 1.2 : 2,
                      crossAxisSpacing: 10.w,
                      mainAxisSpacing: 2.5.h),
                  itemCount: 15,
                  itemBuilder: (context, index) => InkWell(
                        onTap: () {
                          routingPage(context, ShowScheduleDetails());
                        },
                        child: StackForCards(
                          circular: 4.5.w,
                          e: {
                            "title": "اسم البرنامج",
                            "image": "${Images.rootImages}/temp6.png",
                          },
                          height: 0,
                        ),
                      )
                          
                
                  )
            ],
          ),
        ));
  }
}
