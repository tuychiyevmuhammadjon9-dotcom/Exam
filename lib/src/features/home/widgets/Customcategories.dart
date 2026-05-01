import 'package:flutter/material.dart';
import 'package:flutter_exam_4_serious/src/core/const/colors/Appcolors.dart';
import 'package:flutter_exam_4_serious/src/core/widgets/CustomTextWidget.dart';

class Customcategories extends StatefulWidget {
  const Customcategories({super.key, required this.categories});

  final List<String> categories;

  @override
  State<Customcategories> createState() => _CustomcategoriesState();
}

class _CustomcategoriesState extends State<Customcategories> {
  int selected = -1;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widget.categories.length,
        itemBuilder: (context, index) {
          final isselected = selected == index;
          return Padding(
            padding: const EdgeInsets.only(right: 10),
            child: InkWell(
              onTap: () {
                setState(() {
                  selected = index;
                });
              },
              child: Chip(
                color: WidgetStatePropertyAll(
                  isselected ? Appcolors.black : Appcolors.white,
                ),
                label: Customtextwidget(
                  text: widget.categories[index],
                  fontsize: 12,
                  color: isselected ? Appcolors.white : Appcolors.black,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
