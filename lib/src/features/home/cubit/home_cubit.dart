import 'package:bloc/bloc.dart';
import 'package:flutter_exam_4_serious/src/features/home/cubit/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeLoadingState());
  Future<void> getAppleNews() async {
    emit(HomeLoadedSate());
  }

  Future<void> getTeslaNews() async {}
  Future<void> getTopbNews() async {}
  Future<void> getTophews() async {}
  Future<void> getWallNews() async {}

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
