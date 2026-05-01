import 'package:animate_do/animate_do.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_exam_4_serious/src/core/const/colors/Appcolors.dart';
import 'package:flutter_exam_4_serious/src/core/widgets/CustomTextWidget.dart';
import 'package:flutter_exam_4_serious/src/features/home/models/Home_model.dart';
import 'package:flutter_exam_4_serious/src/features/home/widgets/Customcategories.dart';

class CustomnewsContainer extends StatefulWidget {
  const CustomnewsContainer({
    super.key,
    required this.categories,
    required this.model,
  });
  final NewsModel model;

  final List<String> categories;

  @override
  State<CustomnewsContainer> createState() => _CustomnewsContainerState();
}

class _CustomnewsContainerState extends State<CustomnewsContainer> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Customcategories(categories: widget.categories),
        SizedBox(height: 20),
        SizedBox(
          width: double.infinity,
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: widget.model.articles.length > 10
                ? 10
                : widget.model.articles.length,
            shrinkWrap: true,
            itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                Navigator.pushNamed(
                  context,
                  '/detail',
                  arguments: widget.model.articles[index],
                );
              },
              child: SlideInLeft(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Container(
                    height: 140,
                    margin: EdgeInsets.only(bottom: 10),
                    width: double.infinity,
                    decoration: BoxDecoration(color: Appcolors.white),
                    child: Column(
                      children: [
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                width: 100,
                                height: 100,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: CachedNetworkImageProvider(
                                      widget.model.articles[index].urlToImage ??
                                          'data:image/png;base64,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',
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 10),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Customtextwidget(
                                    text:
                                        widget.model.articles[index].title ??
                                        '',
                                    fontsize: 12,
                                    color: Appcolors.black,
                                  ),
                                  SizedBox(height: 20),
                                  Customtextwidget(
                                    text:
                                        widget.model.articles[index].author ??
                                        '',
                                    fontsize: 12,
                                    color: Appcolors.grey,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  SizedBox(height: 10),
                                  Row(
                                    children: [
                                      Customtextwidget(
                                        text:
                                            widget
                                                .model
                                                .articles[index]
                                                .source
                                                ?.name ??
                                            '',

                                        fontsize: 12,
                                        color: Appcolors.secondary,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        Container(
                          width: double.infinity,
                          height: 1,
                          decoration: BoxDecoration(color: Appcolors.lightgrey),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
