// import 'package:flutter/material.dart'; 

// class AppBloc {
//   static final navigateBloc = NavigateBloc(navigatorKey: Keys.navKey);
//   static final requestBloc = RequestBloc();
//   static final slideBloc = SlideBloc();
//   static final textBloc = TextBloc(slideBloc: slideBloc);

//   static final List<SingleChildWidget> providers = [
//     BlocProvider<NavigateBloc>(create: (context) => navigateBloc),
//     BlocProvider<RequestBloc>(create: (context) => requestBloc),
//     BlocProvider<SlideBloc>(create: (context) => slideBloc),
//     BlocProvider<TextBloc>(create: (context) => textBloc),
//   ];

//   getProviders(BuildContext context) {
//     return [
//       BlocProvider<NavigateBloc>(create: (context) => navigateBloc),
//       BlocProvider<RequestBloc>(create: (context) => requestBloc),
//       BlocProvider<SlideBloc>(create: (context) => slideBloc),
//       BlocProvider<TextBloc>(create: (context) => textBloc),
//     ];
//     //return providers;
//   }

//   //
//   static void dispose() {
//     navigateBloc.close();
//     requestBloc.close();
//     slideBloc.close();
//     textBloc.close();
//   }

//   ///Singleton factory
//   static AppBloc? _instance;

//   AppBloc._internal();

//   static AppBloc getInstance() {
//     _instance ??= AppBloc._internal();
//     return _instance!;
//   }
// }
