import 'package:flutter/material.dart';
import 'package:states_bloc/common/service_locator.dart';
import 'package:states_bloc/providers/text_model.dart';

class SlideModel extends ChangeNotifier {
  double _slider = 0.5;

  double get slider => _slider;

  set slider(double value) {
    _slider = value;
    notifyListeners();
  }

  updateSlider(double value) {
    _slider = value;
    locator<TextModel>().fontSize = _slider * 30;
    notifyListeners();
  }
}
