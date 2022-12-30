import 'package:app_clinic/core/images/images.dart';
import 'package:app_clinic/core/theme/app_colors.dart';
import 'package:app_clinic/core/theme/app_fonts.dart';
import 'package:app_clinic/core/theme/widgets/app_button.dart';
import 'package:flutter/material.dart';

import '../auth_screen/auth_screen.dart';
import 'widgets/TextandIcon.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: AppColors.white,
        elevation: 0.8,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.settings_outlined),
            color: AppColors.black,
          )
        ],
        backgroundColor: AppColors.white,
        title: Text(
          'Профиль',
          style: AppFonts.w600s17,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Зачем нужен профиль',
              style: AppFonts.w500s22,
            ),
            SizedBox(
              height: 18,
            ),
            TextAndIcon(
              image: AppImages.hospital,
              text: 'Записывайтесь на прием к самым лучшим специалистам',
            ),
            SizedBox(
              height: 30,
            ),
            TextAndIcon(
              image: AppImages.clipboard,
              text:
                  'Сохраняйте результаты ваших анализов, диагнозы и рекомендации от врачей в собственную библиотеку',
            ),
            SizedBox(
              height: 30,
            ),
            TextAndIcon(
              image: AppImages.speech,
              text:
                  'Просматривайте отзывы о врачах и дополняйте собственными комментариями',
            ),
            SizedBox(
              height: 30,
            ),
            TextAndIcon(
              image: AppImages.bell,
              text:
                  'Получайте уведомления о приеме или о поступивших сообщениях',
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: AppButton(
                textbutton: 'Войти',
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AuthScreen()));
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
