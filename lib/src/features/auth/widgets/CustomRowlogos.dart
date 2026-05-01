import 'package:flutter/material.dart';
import 'package:flutter_exam_4_serious/src/core/const/colors/Appcolors.dart';

class CustomRowlogos extends StatelessWidget {
  const CustomRowlogos({super.key, required this.logos});

  final List<String> logos;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(
        logos.length,
        (index) => Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            border: Border.all(color: Appcolors.black, width: 1.5),
            borderRadius: BorderRadius.circular(7),
          ),
          child: Center(
            child: Image.asset(
              logos[index],
              width: 30,
              height: 30,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
