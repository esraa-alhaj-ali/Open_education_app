import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:open_Education/Localization/AppLocalization.dart';
import 'package:open_Education/Modules/Advertisement/View/Screens/advertisements_screen.dart';
import 'package:open_Education/Modules/News/View/Screens/news_details.dart'
    hide MyCarouselSlider;
import 'package:open_Education/Modules/Schedules/View/Screens/schedule_details.dart';
import 'package:open_Education/constant/Images-Routes.dart';
import 'package:open_Education/constant/appColors.dart';
import 'package:open_Education/constant/textStyles.dart';
import 'package:open_Education/Modules/News/View/Screens/news.dart';
import 'package:open_Education/Modules/Schedules/View/Screens/schedules.dart';
import 'package:open_Education/utils/global_functions.dart';
import 'package:open_Education/Modules/Widgets/app_scaffolds.dart';

import 'package:open_Education/Modules/Home/View/Widget/custom_carousel_slider.dart';

import 'package:open_Education/Modules/Home/View/Widget/viewAll.dart';
import 'package:sizer/sizer.dart';

import '../Widget/schedule_carousel_slider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return AppScaffolds.homeScaffold(
        context: context,
        body: SingleChildScrollView(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ViewAllWithTitle(
              title: "Advertisements".tr(context),
              onTap: () {
                routingPage(context, AdvertisementsScreen());
              },
            ),
            InkWell(
              // مؤقت jalal
              onTap: () {
                routingPage(context, AdvertisementsScreen());
              },
              child: MyCarouselSlider(
                imagesList: const [
                  {
                    "title":
                        "تعلن كلية الحقوق في جامعة دمشق عن بدء التسجيل على مقررات الفصل الأول للعام الدراسي 2013-2024",
                    "image": "${Images.rootImages}/temp3.png",
                  },
                  {
                    "title":
                        "تعلن كلية الحقوق في جامعة دمشق عن بدء التسجيل على مقررات الفصل الأول للعام الدراسي 2013-2024",
                    "image": "${Images.rootImages}/temp3.png",
                  },
                  {
                    "title":
                        "تعلن كلية الحقوق في جامعة دمشق عن بدء التسجيل على مقررات الفصل الأول للعام الدراسي 2013-2024",
                    "image": "${Images.rootImages}/temp3.png",
                  }
                ],
                height: 17.2.h,
              ),
            ),
            SizedBox(width: 0.0, height: 0.5.h),
            ViewAllWithTitle(
              title: "Open_education_schedules".tr(context),
              onTap: () {
                routingPage(context, ShowSchedules());
              },
            ),
            InkWell(
                onTap: () {
                  routingPage(context, ShowScheduleDetails());
                },
                child: ScheduleCarouselSlider()),
            ViewAllWithTitle(
              title: "news".tr(context),
              onTap: () {
                routingPage(context, News());
              },
            ),
            InkWell(
              onTap: () {
                routingPage(
                    context,
                    NewsDetails(
                      news:
                          'يعد فهم سلوك الأفراد و كيفية تصرفهم أثناء انتشار الأوبئة أمر هام جداً ، كونه يساعد في صياغة استراتيجيات وقائية وعلاجية مناسبة، فمنذ تفشي فيروس كورونا 2 (SARS-CoV-2) في الصين-المسبب لمرض فيروس كورونا 2019 (COVID-19) - و انتشاره على مستوى العالم، شكل مصدر قلق صحي خطير إذ تسبب في وفاة ملايين الأشخاص وأثر على حياة مئات الملايين و أصبح يعد جائحة عالمية، ومع ذلك ، تباينت الآراء والمواقف حول المرض.',
                      title:
                          "       سلوك الأفراد و كيفية تصرفهم أثناء انتشار الأوبئة",
                    ));
              },
              child: MyCarouselSlider(
                imagesList: const [
                  {
                    "title":
                        "إجراءات المفاضلة عبر الأنترنت يمكن التقدم إلى مفاضلة التعليم المفتوح للعام الدراسي 2020/2019 عن طريق الانترنت وذلك خلال الفترة ما بين الأحد و الخميس",
                    "image": "${Images.rootImages}/temp3.png",
                  },
                  {
                    "title":
                        "إجراءات المفاضلة عبر الأنترنت يمكن التقدم إلى مفاضلة التعليم المفتوح للعام الدراسي 2020/2019 عن طريق الانترنت وذلك خلال الفترة ما بين الأحد و الخميس",
                    "image": "${Images.rootImages}/temp3.png",
                  },
                  {
                    "title":
                        "إجراءات المفاضلة عبر الأنترنت يمكن التقدم إلى مفاضلة التعليم المفتوح للعام الدراسي 2020/2019 عن طريق الانترنت وذلك خلال الفترة ما بين الأحد و الخميس",
                    "image": "${Images.rootImages}/temp3.png",
                  }
                ],
                height: 14.3.h,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 1.5.h, bottom: 0.7.h),
              child: Text(
                "Connect_with_us".tr(context),
                style: AppTextStyles.titlesMeduim,
              ),
            ),
            Container(
              padding: EdgeInsets.all(2.w),
              height: 17.h,
              width: 87.w,
              decoration: BoxDecoration(
                  color: AppColors.purple,
                  borderRadius: BorderRadius.circular(3.w)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    '${'email'.tr(context)}: Damascuse@gmail.com',
                    style: AppTextStyles.whiteTextForHomeCard,
                  ),
                  Text('${'fax'.tr(context)}: +963-987654321',
                      style: AppTextStyles.whiteTextForHomeCard),
                  Text('${'address'.tr(context)}: Syria-Damascuse-AlBaramkeh',
                      style: AppTextStyles.whiteTextForHomeCard),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SvgPicture.asset(
                        Images.iconWhatsapp,
                        width: 7.w,
                      ),
                      SizedBox(width: 3.w, height: 0.0),
                      SvgPicture.asset(Images.iconTelegram, width: 7.w)
                    ],
                  )
                ],
              ),
            )
          ],
        )));
  }
}
