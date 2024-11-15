import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:open_Education/Localization/AppLocalization.dart';
import 'package:open_Education/Modules/Auth/Cubit/States/create_account_states.dart';
import 'package:image_picker/image_picker.dart';

import 'package:open_Education/constant/appColors.dart';
import 'package:open_Education/constant/textStyles.dart';
import 'package:open_Education/utils/global_functions.dart';
import 'package:sizer/sizer.dart';

class CreateAccountCubit extends Cubit<CreateAccountStates> {
  CreateAccountCubit() : super(MoveSteps());

///////////////// first step

  final TextEditingController firstName = TextEditingController();
  final TextEditingController lastName = TextEditingController();
  final TextEditingController fatherName = TextEditingController();
  final TextEditingController motherName = TextEditingController();
  final TextEditingController birthdayPlace = TextEditingController();
  final TextEditingController birthdaydate = TextEditingController();
  final TextEditingController nationalNumber = TextEditingController();
  final TextEditingController identityNumber = TextEditingController();

  final TextEditingController placeOfRegistration = TextEditingController();
  // مكان القيد
  final TextEditingController registrationNumber = TextEditingController();

  final TextEditingController passportNumber = TextEditingController();

  final TextEditingController recruitmentDivision = TextEditingController();

  final TextEditingController governorate = TextEditingController();

  final GlobalKey<FormState> firstPageCreateAccount = GlobalKey<FormState>();

////////////////////////// second step

  final TextEditingController firstNameInEnglish = TextEditingController();

  final TextEditingController lastNameInEnglish = TextEditingController();

  final TextEditingController fatherNameInEnglish = TextEditingController();

  final TextEditingController motherNameInEnglish = TextEditingController();

  final TextEditingController birthdayPlaceInEnglish = TextEditingController();

  final GlobalKey<FormState> secondPageCreateAccount = GlobalKey<FormState>();

//////////////////// third step

  final TextEditingController mobileNumber = TextEditingController();

  final TextEditingController phoneNumber = TextEditingController();

  final TextEditingController email = TextEditingController();

  final TextEditingController residingCountry = TextEditingController();
  final TextEditingController cityOfResidence = TextEditingController();
  final TextEditingController permanentAdress = TextEditingController();
  final TextEditingController currentAdress = TextEditingController();

  final GlobalKey<FormState> thirdPageCreateAccount = GlobalKey<FormState>();

////////////// step four

  final TextEditingController certificateType = TextEditingController();
  final TextEditingController certificateSource = TextEditingController();
  final TextEditingController generalAverage = TextEditingController();
  final TextEditingController englishLanguageMark = TextEditingController();
  final TextEditingController frenchLanguageMark = TextEditingController();
  final TextEditingController religiousEducationMark = TextEditingController();
  final TextEditingController studentLanguage = TextEditingController();
  final TextEditingController differentialRate = TextEditingController();
  final TextEditingController nameOfTheInstitute = TextEditingController();
  final TextEditingController specializationName = TextEditingController();
  final TextEditingController graduationYear = TextEditingController();

  final GlobalKey<FormState> fourthPageCreateAccount = GlobalKey<FormState>();

  /// step five

  XFile? personalPhoto;
  XFile? identityPhotoFront;
  XFile? identityPhotoBack;
  XFile? certificatePhoto;
  XFile? graduationCertificatePhoto;
  XFile? discountDocumentPhoto;

  String? transparentFileName;
  String? transparentFilePath;
  bool isFileTranscriptAdded = false;
  Widget? childOfTransparentFilePicker;
  Future<void> addTransprentFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();
    if (result != null) {
      isFileTranscriptAdded = true;
      transparentFileName = result.files.first.name;
      transparentFilePath = result.files.first.path;
      childOfTransparentFilePicker = Stack(
        children: [
          Container(
            // color: AppColors.purple,
            height: 40.h,
            padding: EdgeInsets.all(2.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Icon(
                  Icons.check,
                  color: AppColors.purple,
                ),
                Text(
                  transparentFileName!,
                  style: AppTextStyles.secondTitle,
                )
              ],
            ),
          ),
          IconButton(
              onPressed: () {
                isFileTranscriptAdded = false;
                transparentFileName = null;
                transparentFilePath = null;
                emit(MoveSteps());
              },
              icon: const Icon(Icons.clear),color: Colors.red.shade300,)
        ],
      );
      emit(MoveSteps());
    } else {}
  }

  int indexToSwapBetwenStepsPressed = 0;
  int lastIndex = 0;

  PageController pageController = PageController(
    initialPage: 0,
  );

  static CreateAccountCubit get(context) => BlocProvider.of(context);

  void nextSteep(int toPage) {
    indexToSwapBetwenStepsPressed = toPage;
    lastIndex = toPage;
    pageController.animateToPage(toPage,
        curve: Curves.linear, duration: Duration(milliseconds: 500));
    emit(MoveSteps());
  }

  void previousSteps(int toPage, context) {
    if (toPage <= lastIndex) {
      indexToSwapBetwenStepsPressed = toPage;

      pageController.animateToPage(toPage,
          curve: Curves.linear, duration: Duration(milliseconds: 500));
      emit(MoveSteps());
    } else {
      customMotionToast(height: 11.h,width: 70.w,
          description: "Please_complete_the_current_information_then_click_Next"
              .tr(context),
          context: context);
    }
  }
}
