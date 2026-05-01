import 'package:flutter/material.dart';
import 'package:flutter_exam_4_serious/src/core/const/colors/Appcolors.dart';
import 'package:flutter_exam_4_serious/src/core/const/icons/Appicons.dart';
import 'package:flutter_svg/svg.dart';

class Custombuttomnavigationbar extends StatefulWidget {
  const Custombuttomnavigationbar({super.key});

  @override
  State<Custombuttomnavigationbar> createState() =>
      _CustombuttomnavigationbarState();
}

class _CustombuttomnavigationbarState extends State<Custombuttomnavigationbar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Appcolors.white,
      items: [
        BottomNavigationBarItem(
          icon: InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/home');
            },
            child: SvgPicture.asset(Appicons.homebuttom),
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(Appicons.searchbuttom),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(Appicons.savedbuttom),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/settings');
            },
            child: SvgPicture.asset(Appicons.settingsbuttom),
          ),
          label: '',
        ),
      ],
    );
  }
}
