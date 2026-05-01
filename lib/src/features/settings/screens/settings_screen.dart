import 'package:flutter/material.dart';
import 'package:flutter_exam_4_serious/src/core/const/colors/Appcolors.dart';
import 'package:flutter_exam_4_serious/src/core/const/icons/Appicons.dart';
import 'package:flutter_exam_4_serious/src/core/widgets/CustomTextWidget.dart';
import 'package:flutter_exam_4_serious/src/features/home/widgets/CustombuttomNavigation.dart';
import 'package:flutter_exam_4_serious/src/features/settings/widgets/CustomsettingWidget.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Customtextwidget(
              text: 'Setting',
              fontsize: 17,
              color: Appcolors.black,
            ),
          ),

          CustomsettingWidget(
            text: 'Account',
            lefticon: Appicons.profil,
            righticon: Appicons.right,
            ontap: () {
              Navigator.pushNamed(context, '/email');
            },
          ),
          CustomsettingWidget(
            text: 'Push Notifications',
            lefticon: Appicons.notify,
          ),

          CustomsettingWidget(
            text: 'Terms & Conditions',
            lefticon: Appicons.soroq,
            righticon: Appicons.right,
            ontap: () {
              Navigator.pushNamed(context, '/term');
            },
          ),
          CustomsettingWidget(
            text: 'About',
            lefticon: Appicons.soroq,
            righticon: Appicons.right,
            ontap: () {
              Navigator.pushNamed(context, '/term');
            },
          ),
          CustomsettingWidget(text: 'Log Out', lefticon: Appicons.logout),
        ],
      ),
      bottomNavigationBar: Custombuttomnavigationbar(),
    );
  }
}
