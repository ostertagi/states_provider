import 'package:flutter/material.dart';
import 'package:states_bloc/providers/text_state.dart';

class SlideState extends ChangeNotifier {
  TextState textState;

  double _slider = 0.5;

  double get slider => _slider;

  SlideState(this.textState);

  set slider(double value) {
    _slider = value;
    notifyListeners();
  }

  updateSlider(double value) {
    _slider = value;
    textState.fontSize = _slider * 30;
    notifyListeners();
  }
}
