import 'dart:io';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:open_Education/Modules/Auth/Cubit/cubit/create_account_cubit.dart';
import 'package:open_Education/constant/appColors.dart';
import 'package:open_Education/constant/textStyles.dart';
import 'package:sizer/sizer.dart';

// ignore: must_be_immutable
class ImageCardToAdd extends StatefulWidget {
  ImageCardToAdd(
      {super.key,
      required this.numberOfImage,
      required this.isInHome,
      required this.xfileImage,
      required this.photoName,
      required this.isSquare});
  XFile? xfileImage;
  bool isInHome;
  int numberOfImage;
  final String photoName;
  final isSquare;
  @override
  State<ImageCardToAdd> createState() => _ImageCardStateToAdd();
}

class _ImageCardStateToAdd extends State<ImageCardToAdd> {
  @override
  Widget build(BuildContext context) {
    print(widget.xfileImage);
    return Stack(
      alignment: AlignmentDirectional.topStart,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 1.h, bottom: 2.5.h),
          width: widget.isSquare ? 40.w : 70.w,
          height: 40.w,
          decoration: BoxDecoration(
              color: AppColors.grey.withOpacity(0.3),
              borderRadius: BorderRadius.circular(1.w)),
          child: widget.xfileImage == null
              ? IconButton(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  icon: Icon(
                    Icons.add,
                    size: 10.w,
                  ),
                  onPressed: () {
                    _showPicker(context);
                  },
                  color: AppColors.purple,
                )
              : ClipRRect(
                  borderRadius: BorderRadius.circular(1.w),
                  child: InkWell(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) => Dialog(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                widget.photoName,
                                style: AppTextStyles.titlesMeduim
                                    .copyWith(fontWeight: FontWeight.w500)
                                    .copyWith(
                                        height: 0.5.h,
                                        fontWeight: FontWeight.bold,
                                        color: AppColors.purple),
                              ),
                              SizedBox(
                                width: 90.w,
                                height: 60.h,
                                child:
                                    Image.file(File(widget.xfileImage!.path)),
                              ),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: AppColors.purple,
                                    minimumSize: Size(20.w, 5.5.h),
                                    foregroundColor: Colors.white),
                                child: const Text('OK'),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                              )
                            ],
                          ),
                        ),
                      );
                    },
                    child: Image.file(
                      File(widget.xfileImage!.path),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
        ),
        if (widget.xfileImage != null)
          Positioned(
            top: 1.h,
            child: InkWell(
                onTap: () {
                  widget.xfileImage = null;
                  if (widget.isInHome) {
                    CreateAccountCubit accountCubit =
                        CreateAccountCubit.get(context);
                    switch (widget.numberOfImage) {
                      case 1:
                        accountCubit.personalPhoto = null;
                        break;
                      case 2:
                        accountCubit.identityPhotoFront = null;
                        break;

                      case 3:
                        accountCubit.identityPhotoBack = null;
                        break;

                      case 4:
                        accountCubit.certificatePhoto = null;
                        break;

                      case 5:
                        accountCubit.graduationCertificatePhoto = null;
                        break;
                      case 6:
                        accountCubit.discountDocumentPhoto = null;
                        break;
                    }
                  }

                  setState(() {});
                },
                child: Icon(
                  Icons.clear,
                  size: 8.w,
                  color: Colors.red.shade300,
                )),
          )
      ],
    );
  }

  void _showPicker(BuildContext context) {
    showModalBottomSheet(
        backgroundColor: Colors.white,
        context: context,
        builder: (BuildContext context) {
          return SafeArea(
            child: Wrap(
              children: <Widget>[
                ListTile(
                  leading: const Icon(
                    Icons.photo_library,
                    color: AppColors.purple,
                  ),
                  title: Text(
                    'اختر من المعرض',
                    style: AppTextStyles.titlesMeduim
                        .copyWith(fontWeight: FontWeight.w500),
                  ),
                  onTap: () {
                    _pickImage(ImageSource.gallery);
                    Navigator.of(context).pop();
                  },
                ),
                ListTile(
                  leading: const Icon(
                    Icons.photo_camera,
                    color: AppColors.purple,
                  ),
                  title: Text('التقط صورة',
                      style: AppTextStyles.titlesMeduim
                          .copyWith(fontWeight: FontWeight.w500)),
                  onTap: () {
                    _pickImage(ImageSource.camera);
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ),
          );
        });
  }

  Future<void> _pickImage(ImageSource source) async {
    final ImagePicker picker = ImagePicker();

    final pickedFile = await picker.pickImage(source: source);
    if (widget.isInHome) {
      CreateAccountCubit accountCubit = CreateAccountCubit.get(context);

      switch (widget.numberOfImage) {
        case 1:
          accountCubit.personalPhoto = pickedFile;
          break;
        case 2:
          accountCubit.identityPhotoFront = pickedFile;
          break;

        case 3:
          accountCubit.identityPhotoBack = pickedFile;
          break;

        case 4:
          accountCubit.certificatePhoto = pickedFile;
          break;

        case 5:
          accountCubit.graduationCertificatePhoto = pickedFile;
          break;
        case 6:
          accountCubit.discountDocumentPhoto = pickedFile;
          break;
      }
    } else {}

    widget.xfileImage = pickedFile;
    setState(() {});
  }
}
