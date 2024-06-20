import 'package:flutter/material.dart';
import 'package:states_bloc/common/navigate_service.dart';
import 'package:states_bloc/common/service_locator.dart';
import 'package:states_bloc/core/app_router.dart';
import 'package:states_bloc/pages/home_page.dart';
import 'package:provider/provider.dart';
import 'package:states_bloc/providers/app_state.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AppState>(create: (context) => AppState()),
        // ChangeNotifierProxyProvider(
        //   create: (BuildContext context) {
        //     return SlideState(context.read<TextState>());
        //   },
        //   update: (
        //     BuildContext context,
        //     TextState textState,
        //     SlideState? slideState,
        //   ) {
        //     return slideState ?? SlideState(textState);
        //   },
        // ),
      ],
      child: MaterialApp(
        navigatorKey: locator<NavigateService>().navKey,
        initialRoute: HomePage.routeName,
        onGenerateRoute: AppRouter.generateRoute,
      ),
    );
  }
}
