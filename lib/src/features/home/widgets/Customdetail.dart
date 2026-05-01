import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_exam_4_serious/src/core/const/colors/Appcolors.dart';
import 'package:flutter_exam_4_serious/src/core/widgets/CustomTextWidget.dart';
import 'package:flutter_exam_4_serious/src/features/home/models/Home_model.dart';
import 'package:intl/intl.dart';

class Customdetail extends StatefulWidget {
  const Customdetail({super.key, required this.article});
  final Article article;
  @override
  State<Customdetail> createState() => _CustomdetailState();
}

class _CustomdetailState extends State<Customdetail> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 180,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: CachedNetworkImageProvider(
                widget.article.urlToImage ?? 'No images',
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  SizedBox(height: 20),
                  Customtextwidget(
                    text: widget.article.title ?? 'NO title',
                    fontsize: 15,
                    color: Appcolors.black,
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: const Color.fromARGB(255, 28, 27, 27),
                        child: Center(
                          child: Customtextwidget(
                            text: widget.article.source?.name?[0] ?? '',
                            fontsize: 10,
                          ),
                        ),
                      ),
                      SizedBox(width: 5),
                      Customtextwidget(
                        text: widget.article.author ?? '',
                        fontsize: 15,
                        color: Appcolors.grey,
                      ),
                      Spacer(),
                      Customtextwidget(
                        text: DateFormat(
                          'yyy-MM-dd',
                        ).format(widget.article.publishedAt ?? DateTime.now()),
                        fontsize: 15,
                        color: Appcolors.grey,
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Customtextwidget(
                    text: widget.article.description ?? 'No description',
                    fontsize: 15,
                    color: Appcolors.grey,
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
