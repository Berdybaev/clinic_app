import 'dart:math';

import 'package:app_clinic/core/theme/app_colors.dart';
import 'package:app_clinic/core/theme/app_fonts.dart';
import 'package:app_clinic/core/theme/widgets/app_button.dart';
import 'package:app_clinic/screens/auth_screen/Create_profie_screen.dart';

import 'package:flutter/material.dart';

class Confirm_code_screen extends StatefulWidget {
  Confirm_code_screen({super.key, required this.code});
  String? errorText = null;
  int code;
  bool obsText = true;

  TextEditingController controllerCode = TextEditingController();
  @override
  State<Confirm_code_screen> createState() => _Confirm_code_screenState();
}

class _Confirm_code_screenState extends State<Confirm_code_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: AppColors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios_new_outlined,
            color: AppColors.buttonblue,
          ),
          color: AppColors.black,
        ),
        title: const Text(
          'Подтверждение номера',
          style: AppFonts.w600s17,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Введите код из смс',
                style: AppFonts.w500s22,
              ),
              SizedBox(
                height: 133,
              ),
              Center(
                child: TextField(
                  keyboardType: TextInputType.number,
                  obscuringCharacter: '*',
                  controller: widget.controllerCode,
                  obscureText: widget.obsText,
                  decoration: InputDecoration(
                      errorText: widget.errorText,
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: AppColors.darkGrey),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: AppColors.darkGrey),
                      ),
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(color: AppColors.darkGrey),
                      ),
                      suffixIcon: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap: () {
                            widget.obsText = !widget.obsText;
                            setState(() {});
                          },
                          child: CircleAvatar(
                            radius: 17.5,
                            backgroundColor: AppColors.lightGrey,
                            child: Icon(
                              Icons.remove_red_eye,
                              size: 16,
                              color: AppColors.darkGrey,
                            ),
                          ),
                        ),
                      ),
                      prefixIcon: Text(
                        'Код',
                        style: AppFonts.w600s18,
                      )),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              TextButton(
                  onPressed: () {
                    widget.code = Random().nextInt(8999) + 1000;
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text(widget.code.toString())));
                  },
                  child: Text(
                    'Получить код повторно',
                    style:
                        AppFonts.w400s15.copyWith(color: AppColors.buttonblue),
                  )),
              SizedBox(
                height: 15,
              ),
              AppButton(
                textbutton: 'Далее',
                onPressed: (() {
                  if (widget.code.toString() == widget.controllerCode.text) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CreateProfileScreen()),
                    );
                  } else {
                    widget.errorText = 'Error';
                    setState(() {});
                  }
                }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
