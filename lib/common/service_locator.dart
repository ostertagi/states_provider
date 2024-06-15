import 'package:get_it/get_it.dart';
import 'package:states_bloc/common/navigate_service.dart';
import 'package:states_bloc/eventbus/eventbus.dart';
import 'package:states_bloc/providers/slide_model.dart';
import 'package:states_bloc/providers/text_model.dart';

GetIt locator = GetIt.instance;
// Usage : final eventbus = locator<EventBus>();
Future setupLocator() async {
  locator.registerLazySingleton(() => NavigateService());
  locator.registerLazySingleton<EventBus>(() => EventBus());

  locator.registerLazySingleton<SlideModel>(() => SlideModel());
  locator.registerLazySingleton<TextModel>(() => TextModel());
  return;
}
