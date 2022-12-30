import 'package:app_clinic/core/theme/app_fonts.dart';
import 'package:flutter/material.dart';

class TextAndIcon extends StatelessWidget {
  const TextAndIcon({
    Key? key,
    required this.image,
    required this.text,
  }) : super(key: key);

  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          image,
          height: 32,
          width: 32,
        ),
        SizedBox(
          width: 18,
        ),
        Flexible(
          child: Text(
            text,
            style: AppFonts.w500s14,
          ),
        )
      ],
    );
  }
}
