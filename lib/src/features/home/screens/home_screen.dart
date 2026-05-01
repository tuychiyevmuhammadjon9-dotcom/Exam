import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_exam_4_serious/src/core/const/colors/Appcolors.dart';
import 'package:flutter_exam_4_serious/src/core/const/icons/Appicons.dart';
import 'package:flutter_exam_4_serious/src/features/home/cubit/home_cubit.dart';
import 'package:flutter_exam_4_serious/src/features/home/cubit/home_state.dart';
import 'package:flutter_exam_4_serious/src/features/home/widgets/CustomappbarWidget.dart';
import 'package:flutter_exam_4_serious/src/features/home/widgets/CustombuttomNavigation.dart';
import 'package:flutter_exam_4_serious/src/features/home/widgets/CustomnewsContainer.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> categories = ['Apple', 'Tesla', 'Topb', 'Topnews', 'Wall'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Appcolors.white,
        title: CustomappbarWidget(),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              Appicons.notification,
              width: 20,
              height: 20,
            ),
          ),
        ],
      ),
      body: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          if (state is HomeLoadingState) {
            return Center(child: CircularProgressIndicator());
          } else if (state is HomeErrorState) {
            return Center(child: Text(state.errorText));
          } else if (state is HomeLoadedState) {
            return SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: CustomnewsContainer(
                categories: categories,
                model: state.model,
              ),
            );
          } else {
            return SizedBox();
          }
        },
      ),
      bottomNavigationBar: Custombuttomnavigationbar(),
    );
  }
}
