import 'package:flutter/material.dart';
import 'package:flutter_exam_4_serious/src/core/const/colors/Appcolors.dart';
import 'package:flutter_exam_4_serious/src/core/widgets/CustomTextWidget.dart';
import 'package:flutter_svg/svg.dart';

class CustomsettingWidget extends StatefulWidget {
  const CustomsettingWidget({
    super.key,
    required this.text,
    required this.lefticon,
    this.righticon,
    this.ontap,
  });
  final String text;
  final String lefticon;
  final String? righticon;
  final VoidCallback? ontap;

  @override
  State<CustomsettingWidget> createState() => _CustomsettingWidgetState();
}

class _CustomsettingWidgetState extends State<CustomsettingWidget> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(
        widget.lefticon,
        width: 15,
        height: 15,
        fit: BoxFit.cover,
      ),
      title: Customtextwidget(
        text: widget.text,
        fontsize: 13,
        color: Appcolors.black,
        fontWeight: FontWeight.w600,
      ),
      trailing: GestureDetector(
        onTap: widget.ontap,
        child: SvgPicture.asset(
          widget.righticon ?? '',
          width: 15,
          height: 15,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
