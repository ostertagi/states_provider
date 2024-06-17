import 'package:flutter/material.dart';

class UserProvider with ChangeNotifier {
  String _name = "";

  String get name => _name;

  set name(String value) {
    _name = value;
    notifyListeners();
  }
}

class SettingProvider with ChangeNotifier {
  String _theme = "";
  UserProvider userProvider;

  SettingProvider(this.userProvider);

  String get theme => _theme;

  set theme(String value) {
    _theme = '${userProvider.name} theme';
    notifyListeners();
  }
}

// ChangeNotifierProxyProvider(
//     create: (BuildContext context) {
//       return SettingProvider(context.read<UserProvider>());
//     },
//     update: (
//       BuildContext context,
//       UserProvider user,
//       SettingProvider? setting,
//     ) {
//       return setting ?? SettingProvider(user);
//     },
//   ),
// multiples
// class SettingProvider with ChangeNotifier {
//   String _theme;
//   UserProvider userProvider;
//   PreferenceProvider preferenceProvider;

//   SettingProvider(this.userProvider, this.preferenceProvider);

//   String get theme => _theme;

//   set theme(String value) {
//     _theme = '${userProvider.name} ${preferenceProvider.name} theme'; 
//     notifyListeners();
//   }
// }

// ChangeNotifierProxyProvider2(
//   create: (BuildContext context) {
//     return SettingProvider(
//       context.read<UserProvider>(),
//       context.read<PreferenceProvider>(),
//     );
//   },
//   update: (
//     BuildContext context,
//     UserProvider user,
//     PreferenceProvider preference,
//     SettingProvider? setting,
//   ) {
//     return setting ?? SettingProvider(user, preference);
//   },
// ),