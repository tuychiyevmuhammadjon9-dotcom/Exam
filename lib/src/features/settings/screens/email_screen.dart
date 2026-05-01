import 'package:flutter/material.dart';
import 'package:flutter_exam_4_serious/src/core/const/colors/Appcolors.dart';
import 'package:flutter_exam_4_serious/src/core/const/icons/Appicons.dart';
import 'package:flutter_exam_4_serious/src/core/widgets/CustomTextWidget.dart';
import 'package:flutter_exam_4_serious/src/features/settings/widgets/CustomsettingWidget.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get_storage/get_storage.dart';

class EmailScreen extends StatefulWidget {
  const EmailScreen({super.key});

  @override
  State<EmailScreen> createState() => _EmailScreenState();
}

class _EmailScreenState extends State<EmailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolors.white,
      body: Column(
        children: [
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/settings');
                  },
                  child: SvgPicture.asset(Appicons.back),
                ),
                SizedBox(width: 10),
                Customtextwidget(
                  text: 'Account',
                  fontsize: 15,
                  color: Appcolors.black,
                ),
                Spacer(),
                Customtextwidget(
                  text: 'Save',
                  fontsize: 15,
                  color: Appcolors.black,
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          CustomsettingWidget(
            text: GetStorage().read('email'),
            lefticon: Appicons.mail,
          ),
          CustomsettingWidget(
            text: GetStorage().read('password'),
            lefticon: Appicons.lock,
            righticon: Appicons.right,
          ),
        ],
      ),
    );
  }
}
