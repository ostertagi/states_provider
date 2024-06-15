import 'package:flutter/material.dart';

class NavigateService {
  final GlobalKey<NavigatorState> navKey = GlobalKey<NavigatorState>();

  Future<dynamic> pushNamed({required String route, Object? arguments}) {
    return navKey.currentState!.pushNamed(route, arguments: arguments);
  }

  Future<dynamic> pushReplacementNamed(
      {required String route, Object? arguments}) {
    return navKey.currentState!
        .pushReplacementNamed(route, arguments: arguments);
  }

  void pop(String? parent) {
    if (parent != null) {
      navKey.currentState!.popUntil((route) => route.settings.name == parent);
    } else {
      navKey.currentState!.pop();
    }
  }

  void showMyDialog() {
    showDialog(
        context: navKey.currentContext!,
        builder: (context) => const Center(
              child: Material(
                color: Colors.transparent,
                child: Text('Hello'),
              ),
            ));
  }
}



// class NavigatorService {
//   final GlobalKey<NavigatorState> navKey = GlobalKey<NavigatorState>();

//   Future<dynamic> navigateTo(String routeName) {
//     return navKey.currentState!.pushNamed(routeName);
//   }
  // void setupLocator() {
  //   locator.registerLazySingleton(() => NavigateService());
  // }

// }