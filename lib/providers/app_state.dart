import 'package:flutter/material.dart';
import 'package:states_bloc/providers/slide_state.dart';
import 'package:states_bloc/providers/text_state.dart';

class AppState extends ChangeNotifier {
  late TextState textState;
  late SlideState slideState;

  AppState() {
    textState = TextState(this);
    slideState = SlideState(this);
  }

  notify() {
    notifyListeners();
  }
}
