import 'package:flutter/material.dart';
import 'package:open_Education/Localization/AppLocalization.dart';

import 'package:open_Education/Modules/News/View/Screens/news_details.dart';
import 'package:open_Education/utils/global_functions.dart';
import 'package:open_Education/Modules/Widgets/app_scaffolds.dart';
import 'package:sizer/sizer.dart';

import '../Widget/news_card.dart';

class News extends StatelessWidget {
  News({Key? key}) : super(key: key);

  final List<Map<String, String>> news = [
    {
      "title": "They can continue their educational attainment",
      'description':
          "  they can continue their educational attainment, whether they are elderly, or whose average in the secondary certificate  . they can continue their educational attainment, whether they are elderly, or whose average in the secondary certificate  . they can continue their educational attainment, whether they are elderly, or whose average in the secondary certificate  . they can continue their educational attainment, whether they are elderly, or whose average in the secondary certificate  . they can continue their educational attainment, whether they are elderly, or whose average in the secondary certificate  . they can continue their educational attainment, whether they are elderly, or whose average in the secondary certificate  . they can continue their educational attainment, whether they are elderly, or whose average in the secondary certificate  .",
      'image': 'assets/images/temp3.png', // استخدم رابط الصورة المناسب
    },
    {
      "title": " سلوك الأفراد و كيفية تصرفهم أثناء انتشار الأوبئة",
      'description':
          'يعد فهم سلوك الأفراد و كيفية تصرفهم أثناء انتشار الأوبئة أمر هام جداً ، كونه يساعد في صياغة استراتيجيات وقائية وعلاجية مناسبة، فمنذ تفشي فيروس كورونا 2 (SARS-CoV-2) في الصين-المسبب لمرض فيروس كورونا 2019 (COVID-19) - و انتشاره على مستوى العالم، شكل مصدر قلق صحي خطير إذ تسبب في وفاة ملايين الأشخاص وأثر على حياة مئات الملايين و أصبح يعد جائحة عالمية، ومع ذلك ، تباينت الآراء والمواقف حول المرض.',
      'image': 'assets/images/temp.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return AppScaffolds.pagesScaffold(
        context: context,
        appbarTitle: "news".tr(context),
        body: Column(
          children: <Widget>[
            SizedBox(width: 0.0, height: 1.h),
            Expanded(
                child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 4.w),
              child: ListView.builder(
                  itemCount: news.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        routingPage(
                            context,
                            NewsDetails(
                              title: news[index]['title']!,
                              news: news[index]['description']!,
                            ));
                      },
                      child: NewsCard(
                        image: "${news[index]['image']}",
                        description: "${news[index]['description']}",
                      ),
                    );
                  }),
            ))
          ],
        ));
  }
}
