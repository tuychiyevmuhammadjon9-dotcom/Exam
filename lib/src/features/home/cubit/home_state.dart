import 'package:flutter_exam_4_serious/src/features/home/models/Home_model.dart';

abstract class HomeState {}

class HomeLoadingState extends HomeState {}

class HomeErrorState extends HomeState {
  final String errorText;

  HomeErrorState({required this.errorText});
}

class HomeLoadedState extends HomeState {
  final NewsModel model;
  final int index;

  HomeLoadedState({required this.model, required this.index});
}
