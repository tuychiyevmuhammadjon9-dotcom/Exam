import 'package:flutter/material.dart';
import 'package:flutter_exam_4_serious/src/core/const/colors/Appcolors.dart';
import 'package:flutter_exam_4_serious/src/core/widgets/CustomTextWidget.dart';

class CustomRow extends StatelessWidget {
  const CustomRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(flex: 3, child: Container(height: 1, color: Appcolors.black)),
        SizedBox(width: MediaQuery.sizeOf(context).width * 0.05),
        Expanded(
          flex: 3,
          child: Customtextwidget(
            text: 'or sign in with',
            fontsize: 13,
            color: Appcolors.black,
          ),
        ),
        SizedBox(width: MediaQuery.sizeOf(context).width * 0.01),

        Expanded(flex: 3, child: Container(height: 1, color: Appcolors.black)),
      ],
    );
  }
}
