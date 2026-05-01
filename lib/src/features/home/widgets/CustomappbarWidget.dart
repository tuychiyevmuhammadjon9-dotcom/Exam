import 'package:flutter/material.dart';
import 'package:flutter_exam_4_serious/src/core/const/colors/Appcolors.dart';
import 'package:flutter_exam_4_serious/src/core/const/images/Appimages.dart';
import 'package:flutter_exam_4_serious/src/core/widgets/CustomTextWidget.dart';

class CustomappbarWidget extends StatelessWidget {
  const CustomappbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(Appimages.logo, width: 20, height: 20, fit: BoxFit.cover),
        SizedBox(width: 5),
        Customtextwidget(
          text: 'News 24',
          fontsize: 15,
          fontWeight: FontWeight.bold,
          color: Appcolors.primary,
        ),
      ],
    );
  }
}
