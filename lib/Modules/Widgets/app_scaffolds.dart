import 'package:flutter/material.dart';
import 'package:open_Education/Localization/LocalizationPopUpWidget.dart';
import 'package:open_Education/Modules/Notifications/View/Screens/show_notification.dart';
import 'package:open_Education/Modules/Widgets/drawer_with_login.dart';
import 'package:open_Education/Modules/Widgets/drawer_without_login.dart';
import 'package:open_Education/SharedPreferences/SharedPreferencesHelper.dart';
import 'package:open_Education/constant/Images-Routes.dart';
import 'package:open_Education/constant/appColors.dart';
import 'package:open_Education/constant/textStyles.dart';
import 'package:open_Education/utils/global_functions.dart';

import 'package:sizer/sizer.dart';

class AppScaffolds {
// jalal remove all orinition
  static Widget auth({required BuildContext context, required Widget body}) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    Images.backgroundAuth,
                  ),
                  alignment: Alignment.bottomCenter)),
          height: 100.h - 4.7.h,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              body,
            ],
          ),
        ),
      )),
    );
  }

  static Widget pagesScaffold(
      {required BuildContext context,
      required Widget body,
      required String appbarTitle}) {
    return SafeArea(
      child: Scaffold(
        drawerEdgeDragWidth: 30.w,
        backgroundColor: Colors.grey[50],
        appBar: AppBar(
            shape: const RoundedRectangleBorder(
                side: BorderSide(color: AppColors.purple, width: 0.1)),
            leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back,
                  color: AppColors.purple,
                )),
            toolbarHeight: 9.h,
            elevation: 0,
            backgroundColor: Colors.transparent,
            bottomOpacity: 0,
            surfaceTintColor: Colors.transparent,
            title: Text(
              appbarTitle,
              style: AppTextStyles.titlesMeduim.copyWith(
                  fontWeight: FontWeight.w500,
                  color: AppColors.purple,
                  fontSize: 11.5.sp),
            )),
        body: body,
      ),
    );
  }

  static Widget homeScaffold(
      {required BuildContext context, required Widget body}) {
    return Scaffold(
      drawerEdgeDragWidth: 30.w,
      backgroundColor: Colors.white,
      drawer: AppSharedPreferences.getMode == "Student"
          ? drawerWithLogin(context)
          : drawerWithoutLogin(context),
      appBar: AppBar(
        shape: const RoundedRectangleBorder(
            side: BorderSide(color: AppColors.purple, width: 0.1)),
        toolbarHeight: 9.5.h,
        elevation: 0,
        backgroundColor: Colors.transparent,
        bottomOpacity: 0,
        surfaceTintColor: Colors.transparent,
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              LocalizationPopUpWidget(context: context)
                  .popUpChooseLocale(context);
            },
            icon: const Icon(Icons.language_rounded),
          ),
          IconButton(
            icon: const Icon(Icons.notifications_none),
            onPressed: () {
              routingPage(context, NotificationsScreen());
            },
          ),
        ],
        title: Image.asset(
          Images.damascusUniversityLogo,
          height: 8.5.h,
          fit: BoxFit.cover,
        ),
      ),
      body: body,
    );
  }
}
