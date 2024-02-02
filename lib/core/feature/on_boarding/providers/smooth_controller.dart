import 'package:flutter_riverpod/flutter_riverpod.dart';

final indexSmoothProvider =
    StateNotifierProvider<ChangeIndexSmoothNotivier, int>(
        (ref) => ChangeIndexSmoothNotivier());

class ChangeIndexSmoothNotivier extends StateNotifier<int> {
  ChangeIndexSmoothNotivier() : super(0);

  void changeIndex(int newIndex) {
    state = newIndex;
  }
}
