import 'package:app_clinic/core/theme/app_colors.dart';
import 'package:app_clinic/core/theme/app_fonts.dart';
import 'package:app_clinic/core/theme/widgets/app_button.dart';
import 'package:app_clinic/screens/auth_screen/widget/custom_textfieldFIO.dart';
import 'package:app_clinic/screens/home_screens/bottom_navigation.dart';
import 'package:flutter/material.dart';

class CreateProfileScreen extends StatelessWidget {
  CreateProfileScreen({super.key});
  TextEditingController controllerName = TextEditingController();
  TextEditingController controllerLastName = TextEditingController();
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
          icon: Icon(Icons.close),
          color: AppColors.blackwithOpacity54,
        ),
        title: Padding(
          padding: const EdgeInsets.all(50),
          child: Text(
            'Создание профиля',
            style: AppFonts.w600s17,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          nameTextField(
              lable: 'Имя',
              hintText: 'Введите ваше имя',
              controller: controllerName),
          SizedBox(
            height: 32,
          ),
          nameTextField(
            lable: 'Фамилия',
            hintText: 'Введите вашу фамилию',
            controller: controllerLastName,
          ),
          SizedBox(
            height: 150,
          ),
          Center(
              child: AppButton(
                  textbutton: 'Далее',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BottomNavBar(),
                      ),
                    );
                  })),
        ]),
      ),
    );
  }
}
