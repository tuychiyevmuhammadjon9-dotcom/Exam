import 'package:flutter/material.dart';
import 'package:flutter_exam_4_serious/src/core/const/colors/Appcolors.dart';
import 'package:flutter_exam_4_serious/src/core/widgets/CustomTextWidget.dart';

class CutomTerms extends StatelessWidget {
  const CutomTerms({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Customtextwidget(
          fontWeight: FontWeight.w600,
          text: 'By signing up to News24 you are accepting our',
          fontsize: 12,
          color: Appcolors.black,
        ),
        Customtextwidget(
          text: 'Terms & Conditions',
          fontsize: 13,
          color: Appcolors.black,
        ),
      ],
    );
  }
}
