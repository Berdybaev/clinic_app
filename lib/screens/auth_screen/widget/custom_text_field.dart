import 'package:app_clinic/core/theme/app_colors.dart';
import 'package:app_clinic/core/theme/app_fonts.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({Key? key, required this.controller, required this.errorText})
      : super(key: key);

  final TextEditingController controller;
  String? errorText;
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      cursorColor: AppColors.blue,
      decoration: InputDecoration(
          errorText: errorText,
          hintStyle: AppFonts.w700s17.copyWith(
            color: AppColors.darkGrey,
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: AppColors.darkGrey),
          ),
          border: UnderlineInputBorder(
            borderSide: BorderSide(color: AppColors.darkGrey),
          ),
          hintText: '0 _ _ _ _ _ _ _ _ _ _ '),
    );
  }
}
