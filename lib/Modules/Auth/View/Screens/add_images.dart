// import 'dart:io';

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:open_Education/Localization/AppLocalization.dart';
// import 'package:open_Education/Modules/Widgets/custom_elevatedButton.dart';
// import 'package:open_Education/constant/Images-Routes.dart';
// import 'package:open_Education/constant/appColors.dart';
// import 'package:open_Education/constant/textStyles.dart';
// import 'package:sizer/sizer.dart';

// import '../Widget/image_card_to_add.dart';

// class AddImages extends StatefulWidget {
//   const AddImages({super.key});

//   @override
//   State<AddImages> createState() => _AddImagesState();
// }

// class _AddImagesState extends State<AddImages> {
//   XFile? _personalPhoto;
//   XFile? _identityPhotoFront;
//   XFile? _identityPhotoBack;
//   XFile? _certificatePhoto;
//   XFile? _otherDocumentsPhoto;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         surfaceTintColor: Colors.transparent,
//       ),
//       body: SingleChildScrollView(
//         child: Container(
//           width: 100.w,
//           margin: EdgeInsets.symmetric(horizontal: 4.w),
//           child: Column(
//             children: <Widget>[
//               // SizedBox(width: 0.0, height: 10.h),
//               Image.asset(
//                 Images.damascusUniversityLogo,
//                 width: 16.h,
//               ),
//               SizedBox(width: 0.0, height: 5.h),
//               Align(
//                   alignment: AlignmentDirectional.centerStart,
//                   child: Text(
//                       style: AppTextStyles.titlesMeduim
//                           .copyWith(fontWeight: FontWeight.w500),
//                       "personal_photo".tr(context))),
//               ImageCardToAdd( 
//                   isSquare: true,
//                   xfileImage: _personalPhoto,
//                   photoName: "personal_photo".tr(context)),
//               Align(
//                   alignment: AlignmentDirectional.centerStart,
//                   child: Text(
//                       style: AppTextStyles.titlesMeduim
//                           .copyWith(fontWeight: FontWeight.w500),
//                       "identity_photo_front".tr(context))),
//               ImageCardToAdd(
//                   isSquare: false,
//                   xfileImage: _identityPhotoFront,
//                   photoName: "identity_photo_front".tr(context)),
//               Align(
//                   alignment: AlignmentDirectional.centerStart,
//                   child: Text(
//                       style: AppTextStyles.titlesMeduim
//                           .copyWith(fontWeight: FontWeight.w500),
//                       "identity_photo_back".tr(context))),
//               ImageCardToAdd(
//                   isSquare: false,
//                   xfileImage: _identityPhotoBack,
//                   photoName: "identity_photo_back".tr(context)),
//               Align(
//                   alignment: AlignmentDirectional.centerStart,
//                   child: Text(
//                       style: AppTextStyles.titlesMeduim
//                           .copyWith(fontWeight: FontWeight.w500),
//                       "certificate_photo".tr(context))),
//               ImageCardToAdd(
//                   isSquare: false,
//                   xfileImage: _certificatePhoto,
//                   photoName: "certificate_photo".tr(context)),
//               Align(
//                   alignment: AlignmentDirectional.centerStart,
//                   child: Text(
//                       style: AppTextStyles.titlesMeduim
//                           .copyWith(fontWeight: FontWeight.w500),
//                       "other_documents_photo".tr(context))),
//               ImageCardToAdd(
//                   isSquare: true,
//                   xfileImage: _otherDocumentsPhoto,
//                   photoName: "other_documents_photo".tr(context)),
//               CustomElevatedButton(
//                 titlebutton: "sign_in".tr(context),
//                 onPressed: () {},
//               ),
//               SizedBox(width: 0.0, height: 3.h)
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
