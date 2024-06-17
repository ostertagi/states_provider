import 'package:get_it/get_it.dart';
import 'package:states_bloc/common/navigate_service.dart';
import 'package:states_bloc/eventbus/eventbus.dart';

GetIt locator = GetIt.instance;
// Usage : final eventbus = locator<EventBus>();
Future setupLocator() async {
  locator.registerLazySingleton(() => NavigateService());
  locator.registerLazySingleton<EventBus>(() => EventBus());

  // locator.registerLazySingleton<SlideState>(() => SlideState());
  // locator.registerLazySingleton<TextState>(() => TextState());
  return;
}
