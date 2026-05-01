import 'package:flutter/material.dart';
import 'package:flutter_exam_4_serious/src/core/const/colors/Appcolors.dart';
import 'package:flutter_exam_4_serious/src/core/const/images/Appimages.dart';
import 'package:flutter_exam_4_serious/src/core/widgets/CustomInputWidget.dart';
import 'package:flutter_exam_4_serious/src/core/widgets/CustomTextWidget.dart';
import 'package:flutter_exam_4_serious/src/features/auth/widgets/CustomRow.dart';
import 'package:flutter_exam_4_serious/src/features/auth/widgets/CustomRowlogos.dart';
import 'package:flutter_exam_4_serious/src/features/auth/widgets/CustomTerms.dart';
import 'package:flutter_exam_4_serious/src/features/auth/widgets/SignContainerWidget.dart';
import 'package:get_storage/get_storage.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  List<String> logos = [
    Appimages.mail,
    Appimages.google,
    Appimages.facebook,
    Appimages.twitter,
    Appimages.apple,
  ];
  bool haspassword = false;
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  @override
  void initState() {
    super.initState();
    passwordcontroller.addListener(() {
      setState(() {
        haspassword = passwordcontroller.text.isNotEmpty;
      });
    });
  }

  @override
  void dispose() {
    emailcontroller.dispose();
    passwordcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 70),
            Image.asset(
              Appimages.logo,
              width: 70,
              height: 70,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 10),
            Customtextwidget(
              text: 'News 24',
              fontsize: 20,
              fontWeight: FontWeight.bold,
              color: Appcolors.primary,
            ),
            CustomInputWidget(hintText: 'Email', controller: emailcontroller),
            SizedBox(height: 40),
            CustomInputWidget(
              hintText: 'Password',
              controller: passwordcontroller,
            ),
            SizedBox(height: 40),
            GestureDetector(
              onTap: () {
                GetStorage().write('email', emailcontroller.text);
                GetStorage().write('password', passwordcontroller.text);
                Navigator.pushNamed(context, '/home');
              },
              child: SignContainerWidget(haspassword: haspassword),
            ),
            SizedBox(height: 40),
            CustomRow(),
            SizedBox(height: 40),
            CustomRowlogos(logos: logos),
            SizedBox(height: 40),
            CutomTerms(),
          ],
        ),
      ),
    );
  }
}
