import 'dart:io';

import 'package:app_clinic/core/theme/app_colors.dart';
import 'package:app_clinic/core/theme/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:humanitarian_icons/humanitarian_icons.dart';
import 'package:image_picker/image_picker.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _MyWidgetState();
}

List<Widget> screens = [];
int _selectedIndex = 0;

class _MyWidgetState extends State<BottomNavBar> {
  File? _image;

  Future _pickImage(ImageSource source) async {
    final image = await ImagePicker().pickImage(source: source);
    if (image == null) return;
    File? img = File(image.path);

    setState(() {
      _image = img;
      Navigator.of(context).pop();
    });
  }

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
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: AppColors.lightGrey,
          selectedItemColor: AppColors.blue,
          unselectedLabelStyle: AppFonts.w500s10,
          selectedLabelStyle: AppFonts.w500s10,
          onTap: changeIndex,
          currentIndex: _selectedIndex,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person_outlined,
              ),
              label: 'Доктор',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.view_array),
              label: 'Статьи',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.bookmark_outlined),
              label: 'Мои доктора',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_add_alt),
              label: 'Статьи',
            ),
          ]),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: SizedBox(
        height: 64,
        width: 65,
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20))),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(HumanitarianIcons.ambulance),
              Text(
                'Вызов',
                style: AppFonts.w500s10.copyWith(color: AppColors.white),
              )
            ],
          ),
        ),
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
              child: _image == null
                  ? Text('АА')
                  : CircleAvatar(
                      radius: 60,
                      backgroundImage: FileImage(
                        _image!,
                      ),
                    ),
            ),
            Positioned(
                right: 0,
                bottom: 0,
                child: InkWell(
                  onTap: () {
                    _pickImage(ImageSource.camera);
                  },
                  child: CircleAvatar(
                    radius: 18,
                    child: Icon(
                      Icons.photo_camera,
                      size: 16,
                    ),
                  ),
                ))
          ]),
          Text(
            'Айзан Алишерова',
            style: AppFonts.w500s22,
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            '+996 555 76 00 67',
            style: AppFonts.w400s18,
          )
        ]),
      ),
    );
  }

  void changeIndex(int index) {
    if (_selectedIndex != index) {
      _selectedIndex = index;

      print(_selectedIndex);
      setState(() {});
    }
  }
}
