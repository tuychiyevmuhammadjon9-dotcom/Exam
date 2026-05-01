import 'package:flutter/material.dart';
import 'package:flutter_exam_4_serious/src/core/const/colors/Appcolors.dart';
import 'package:flutter_exam_4_serious/src/core/widgets/CustomTextWidget.dart';

class SignContainerWidget extends StatelessWidget {
  const SignContainerWidget({super.key, required this.haspassword});

  final bool haspassword;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 150,
      decoration: BoxDecoration(
        color: haspassword ? Appcolors.primary : Appcolors.grey,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Customtextwidget(
          text: 'Sign Up',
          fontsize: 15,
          color: haspassword ? Appcolors.white : Appcolors.white,
        ),
      ),
    );
  }
}
