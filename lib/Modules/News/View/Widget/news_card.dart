import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:open_Education/SharedPreferences/SharedPreferencesHelper.dart';
import 'package:open_Education/constant/Images-Routes.dart';
import 'package:open_Education/constant/box_shadow.dart';
import 'package:open_Education/constant/textStyles.dart';
import 'package:sizer/sizer.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({
    super.key,
    required this.description, required this.image,
  });
  final String description;
final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 14.h,
      margin: EdgeInsets.symmetric(vertical: 3.w, horizontal: 0.2.w),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(4.w)),
          boxShadow: boxShadow),
      child: Row(
        children: [
          Container(
            width: 32.w,
            height: 15.h,
            decoration: BoxDecoration(
                color: Colors.red,
                image: DecorationImage(
                    image: AssetImage(
                       image,
                    ),
                    fit: BoxFit.cover),
                borderRadius: AppSharedPreferences.getLang == "en"
                    ? BorderRadius.only(
                        bottomLeft: Radius.circular(4.w),
                        topLeft: Radius.circular(4.w))
                    : BorderRadius.only(
                        bottomRight: Radius.circular(4.w),
                        topRight: Radius.circular(4.w))),
          ),
          SizedBox(width: 3.5.w),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  description,
                  style: AppTextStyles.explanatoryText.copyWith(height: 0.25.h),
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          SizedBox(width: 3.5.w),
        ],
      ),
    );
  }
}
