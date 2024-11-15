import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:open_Education/Localization/AppLocalization.dart';
import 'package:open_Education/constant/appColors.dart';
import 'package:open_Education/constant/Images-Routes.dart';
import 'package:open_Education/Modules/Auth/View/Screens/sign_in.dart';
import 'package:open_Education/utils/global_functions.dart';
import 'package:sizer/sizer.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
   void initState()  {
       Future.delayed(const Duration(seconds: 1,),() {
           removeUntilRoutingPage(context, SignIn() );
       },);
   
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                gradient: const LinearGradient(colors: [
                  AppColors.splashGradientPurple,
                  AppColors.splashGradientYello
                ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(35.w),
                    bottomRight: Radius.circular(35.w)),
              ),
              height: 75.h,
              width: 85.w,
              alignment: Alignment.center,
              child: Image.asset(Images.damascusUniversityLogo),
            ),
            SizedBox(width: 0.0, height: 10.h),
            Text("Legal_Studies_Program".tr(context)),
          ],
        ),
      ),
    );
  }
}
