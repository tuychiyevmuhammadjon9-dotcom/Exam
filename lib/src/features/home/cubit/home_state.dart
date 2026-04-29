abstract class HomeState {}

class HomeLoadingState extends HomeState {}

class HomeErrorState extends HomeState {
  final String errorText;

  HomeErrorState({required this.errorText});
}

class HomeLoadedSate extends HomeState {}
