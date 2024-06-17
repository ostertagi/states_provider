import 'package:flutter/material.dart';
import 'package:states_bloc/common/navigate_service.dart';
import 'package:states_bloc/common/service_locator.dart';
import 'package:states_bloc/core/app_router.dart';
import 'package:states_bloc/pages/home_page.dart';
import 'package:provider/provider.dart';
import 'package:states_bloc/providers/slide_model.dart';
import 'package:states_bloc/providers/text_model.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<TextModel>(
            create: (context) => locator<TextModel>()),
        ChangeNotifierProvider<SlideModel>(
            create: (context) => locator<SlideModel>()),
      ],
      child: MaterialApp(
        navigatorKey: locator<NavigateService>().navKey,
        initialRoute: HomePage.routeName,
        onGenerateRoute: AppRouter.generateRoute,
      ),
    );
  }
}
