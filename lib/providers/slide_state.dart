import 'package:states_bloc/providers/app_state.dart';

class SlideState {
  //TextState textState;
  late AppState parent;

  double _slider = 0.5;

  double get slider => _slider;

  SlideState(this.parent);

  set slider(double value) {
    _slider = value;
    // notifyListeners();
    parent.notify();
  }

  updateSlider(double value) {
    _slider = value;
    parent.textState.fontSize = _slider * 30;
    // notifyListeners();
    parent.notify();
  }
}
