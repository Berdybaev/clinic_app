import 'package:app_clinic/core/theme/app_colors.dart';
import 'package:app_clinic/core/theme/app_fonts.dart';
import 'package:flutter/material.dart';

class nameTextField extends StatelessWidget {
  const nameTextField({
    Key? key,
    required this.lable,
    required this.hintText,
    required this.controller,
  }) : super(key: key);
  final String lable;
  final String hintText;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: AppColors.darkGrey),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: AppColors.darkGrey),
        ),
        border: UnderlineInputBorder(
          borderSide: BorderSide(color: AppColors.darkGrey),
        ),
        label: Text(
          lable,
          style: AppFonts.w400s15,
        ),
        hintText: 'Введите ваше имя',
      ),
    );
  }
}
