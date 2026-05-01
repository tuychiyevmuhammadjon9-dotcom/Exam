import 'package:bloc/bloc.dart';
import 'package:flutter_exam_4_serious/src/core/service/Api_service.dart';
import 'package:flutter_exam_4_serious/src/features/home/cubit/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeLoadingState()) {
    getAppleNews();
  }
  Future<void> getAppleNews() async {
    try {
      emit(HomeLoadingState());
      final result = await ApiService.getTeslaNews();
      emit(HomeLoadedState(model: result, index: 0));
    } catch (e) {
      emit(HomeErrorState(errorText: e.toString()));
    }
  }

  Future<void> getTeslaNews() async {
    try {
      emit(HomeLoadingState());
      final result = await ApiService.getTeslaNews();
      emit(HomeLoadedState(model: result, index: 1));
    } catch (e) {
      emit(HomeErrorState(errorText: e.toString()));
    }
  }

  Future<void> getTopbNews() async {
    try {
      emit(HomeLoadingState());
      final result = await ApiService.getToph();
      emit(HomeLoadedState(model: result, index: 2));
    } catch (e) {
      emit(HomeErrorState(errorText: e.toString()));
    }
  }

  Future<void> getTophews() async {
    try {
      emit(HomeLoadingState());
      final result = await ApiService.getToph();
      emit(HomeLoadedState(model: result, index: 3));
    } catch (e) {
      emit(HomeErrorState(errorText: e.toString()));
    }
  }

  Future<void> getWallNews() async {
    try {
      emit(HomeLoadingState());
      final result = await ApiService.getToph();
      emit(HomeLoadedState(model: result, index: 4));
    } catch (e) {
      emit(HomeErrorState(errorText: e.toString()));
    }
  }

  void checkIndex(int index) {
    if (index == 0) {
      getAppleNews();
    } else if (index == 1) {
      getTeslaNews();
    } else if (index == 2) {
      getTopbNews();
    } else if (index == 3) {
      getTophews();
    } else {
      getWallNews();
    }
  }
}
