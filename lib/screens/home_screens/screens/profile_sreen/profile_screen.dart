import 'package:app_clinic/core/theme/app_colors.dart';
import 'package:app_clinic/core/theme/app_fonts.dart';
import 'package:app_clinic/screens/home_screens/bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Profilescreen extends StatefulWidget {
  const Profilescreen({super.key});

  @override
  State<Profilescreen> createState() => _ProfilescreenState();
}

class _ProfilescreenState extends State<Profilescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        elevation: 0,
        backgroundColor: AppColors.white,
        title: Text(
          'Мой профиль',
          style: AppFonts.w700s34,
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.settings_outlined,
                color: AppColors.black,
              ))
        ],
      ),
      body: Center(
        child: Column(children: [
          SizedBox(
            height: 30,
          ),
          Stack(children: [
            CircleAvatar(
              backgroundColor: AppColors.lighteblue,
              radius: 60,
              child: Text('АА',
                  style: AppFonts.w500s40.copyWith(
                    color: AppColors.white,
                  )),
            ),
            Positioned(
                right: 0,
                bottom: 0,
                child: CircleAvatar(
                  radius: 18,
                  child: Icon(
                    Icons.photo_camera,
                    size: 16,
                  ),
                ))
          ])
        ]),
      ),
    );
  }
}
