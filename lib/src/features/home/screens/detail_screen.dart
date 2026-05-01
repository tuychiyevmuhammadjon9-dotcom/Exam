import 'package:flutter/material.dart';
import 'package:flutter_exam_4_serious/src/core/const/colors/Appcolors.dart';
import 'package:flutter_exam_4_serious/src/core/const/icons/Appicons.dart';
import 'package:flutter_exam_4_serious/src/features/home/models/Home_model.dart';
import 'package:flutter_exam_4_serious/src/features/home/widgets/Customdetail.dart';
import 'package:flutter_svg/svg.dart';
import 'package:share_plus/share_plus.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key, required this.articles});
  final Article articles;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolors.white,
      appBar: AppBar(
        actions: [
          SvgPicture.asset(
            Appicons.savedbuttom,
            width: 25,
            height: 25,
            fit: BoxFit.cover,
          ),
          SizedBox(width: 10),
          InkWell(
            onTap: () {
              SharePlus.instance.share(
                ShareParams(text: 'check out my website ${articles.url}'),
              );
            },
            child: SvgPicture.asset(
              Appicons.share,
              width: 25,
              height: 25,
              fit: BoxFit.cover,
            ),
          ),
        ],
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: SvgPicture.asset(Appicons.back, width: 10, height: 10),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Customdetail(article: articles),
      ),
    );
  }
}
