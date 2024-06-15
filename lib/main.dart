import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:states_bloc/app.dart';
import 'package:states_bloc/common/service_locator.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(statusBarIconBrightness: Brightness.light),
  );
  await setupLocator();
  runApp(const MyApp());
}
