import 'package:flutter/material.dart';
import 'package:open_Education/constant/Images-Routes.dart';
import 'package:open_Education/constant/appColors.dart';
import 'package:open_Education/constant/textStyles.dart';
import 'package:sizer/sizer.dart';

class AdvertisementsCard extends StatelessWidget {
  const AdvertisementsCard({
    super.key, required this.image, required this.textADS,
  });
final  String image;
final  String textADS;
  @override
  Widget build(BuildContext context) {
    return Card( color: Colors.white,
      margin: EdgeInsets.only(top: 2.h, bottom: 2.h),
      elevation: 3,
      child: Column(
        children: <Widget>[
          Container(
            height: 14.5.h,
            decoration: BoxDecoration(
                color: AppColors.purple,
                image: DecorationImage(image:   AssetImage(image),fit: BoxFit.cover  ),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(4.w),
                    topRight: Radius.circular(4.w))),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 1.h, horizontal: 3.w),
            child: Text(
          textADS,
              style: AppTextStyles.explanatoryText,
            ),
          )
        ],
      ),
    );
  }
}
