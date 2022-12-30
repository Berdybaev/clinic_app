import 'dart:math';

import 'package:app_clinic/core/theme/app_colors.dart';
import 'package:app_clinic/core/theme/app_fonts.dart';
import 'package:app_clinic/core/theme/widgets/app_button.dart';
import 'package:app_clinic/screens/auth_screen/confirm_code_page.dart';
import 'package:app_clinic/screens/auth_screen/widget/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

String? errorText;

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    int code = Random().nextInt(9999) + 1000;
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: AppColors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.close),
          color: AppColors.black,
        ),
        title: Padding(
          padding: const EdgeInsets.all(100),
          child: Text(
            'Вход',
            style: AppFonts.w600s17,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Войти',
              style: AppFonts.w700s34,
            ),
            SizedBox(
              height: 50,
            ),
            Text('Номер телефона'),
            SizedBox(
              height: 12,
            ),
            CustomTextField(
              controller: controller,
              errorText: errorText,
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'На указанный вами номер придет \nоднократное СМС - сообщение с кодом \n подтверждения',
              style: AppFonts.w400s15,
            ),
            SizedBox(
              height: 15,
            ),
            AppButton(
              textbutton: 'Далее',
              onPressed: (() {
                if (controller.text.length == 10) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        code.toString(),
                      ),
                    ),
                  );

                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Confirm_code_screen(
                                code: code,
                              )));
                } else {
                  errorText = 'Некорректный номер';
                  setState(() {});
                }
              }),
            )
          ],
        ),
      ),
    );
  }
}
