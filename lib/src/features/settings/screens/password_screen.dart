import 'package:flutter/material.dart';
import 'package:flutter_exam_4_serious/src/core/const/colors/Appcolors.dart';
import 'package:flutter_exam_4_serious/src/core/const/icons/Appicons.dart';
import 'package:flutter_exam_4_serious/src/core/widgets/CustomInputWidget.dart';
import 'package:flutter_exam_4_serious/src/core/widgets/CustomTextWidget.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get_storage/get_storage.dart';

class PasswordScreen extends StatefulWidget {
  const PasswordScreen({super.key});

  @override
  State<PasswordScreen> createState() => _PasswordScreenState();
}

class _PasswordScreenState extends State<PasswordScreen> {
  bool hasspassword = false;

  TextEditingController passwordcontroller = TextEditingController();
  @override
  void initState() {
    super.initState();
    passwordcontroller.addListener(() {
      setState(() {
        hasspassword = passwordcontroller.text.isNotEmpty;
      });
    });
  }

  @override
  void dispose() {
    passwordcontroller.dispose();
    super.dispose();
  }

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
                    Navigator.pushNamed(context, '/email');
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
                InkWell(
                  onTap: () {
                    GetStorage().write('password', passwordcontroller.text);
                    Navigator.pushNamed(context, '/email');
                  },
                  child: Customtextwidget(
                    text: 'Save',
                    fontsize: 15,
                    color: hasspassword ? Appcolors.primary : Appcolors.grey,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          CustomInputWidget(hintText: GetStorage().read('password')),
          SizedBox(height: 20),
          CustomInputWidget(
            hintText: 'New password',
            controller: passwordcontroller,
          ),
          SizedBox(height: 20),
          CustomInputWidget(hintText: 'Confirm new password'),
        ],
      ),
    );
  }
}
