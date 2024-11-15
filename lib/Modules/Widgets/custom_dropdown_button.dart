import 'package:flutter/material.dart';
import 'package:open_Education/Localization/AppLocalization.dart';
import 'package:open_Education/Modules/Auth/Cubit/cubit/sign_in_cubit.dart';
import 'package:open_Education/constant/appColors.dart';
import 'package:open_Education/constant/textStyles.dart';
import 'package:sizer/sizer.dart';

// ignore: must_be_immutable
class CustomDropdownButton extends StatefulWidget {
  CustomDropdownButton(
      {super.key, required this.items, this.hint, required this.usagePosition});
  @override
  _CustomDropdownButtonState createState() => _CustomDropdownButtonState(
        items: items,
        hint: hint,
      );
  final int usagePosition;

  final List<String> items;
  final String? hint;
}

class _CustomDropdownButtonState extends State<CustomDropdownButton> {
  _CustomDropdownButtonState({required this.items, this.hint}) {
    selectedValue = hint == null ? items[0] : null;
  }
  final List<String> items;
  final String? hint;
  String? selectedValue;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 4.5.w, vertical: 0.2.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.w),
        color: AppColors.greyTextField,
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          borderRadius: BorderRadius.circular(4.w),
          dropdownColor: Colors.white.withOpacity(0.9),
          hint: widget.hint != null
              ? Text(widget.hint!, style: AppTextStyles.titlesMeduim)
              : null,
          value: selectedValue,
          icon: const Icon(Icons.arrow_drop_down),
          iconSize: 24,
          isExpanded: true,
          items: widget.items.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(
                value,
                style: AppTextStyles.titlesMeduimTable,
              ),
            );
          }).toList(),
          onChanged: (String? newValue) {
            switch (widget.usagePosition) {
              case 1: // for use in  sigin in  page
                final signInCubit = SignInCubit.get(context);
                signInCubit.selectedAccountType = newValue;
                break;

                // بقية الحالات
             }

            setState(() {
              selectedValue = newValue;

            });
            print(newValue);
          },
        ),
      ),
    );
  }
}
