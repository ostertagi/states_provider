import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:states_bloc/common/navigate_service.dart';
import 'package:states_bloc/common/service_locator.dart';
import 'package:states_bloc/pages/about_page.dart';
import 'package:states_bloc/pages/home_page.dart';
import 'package:states_bloc/pages/settings_page.dart';
import 'package:states_bloc/providers/text_model.dart';

const kTitle = 'Bloc';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<TextModel>(
      builder: (context, textModel, child) {
        return Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                decoration: const BoxDecoration(
                  color: Colors.teal,
                ),
                child: Center(
                  child: Text(
                    kTitle,
                    style: TextStyle(
                      fontSize:
                          Theme.of(context).textTheme.titleLarge!.fontSize,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              getListTile('Home', onTap: () {
                locator<NavigateService>().pushNamed(route: HomePage.routeName);
              }),
              getLine(),
              getListTile('About', onTap: () {
                locator<NavigateService>()
                    .pushNamed(route: AboutPage.routeName);
              }),
              getLine(),
              getListTile('Settings', onTap: () {
                locator<NavigateService>()
                    .pushNamed(route: SettingsPage.routeName);
              }),
            ],
          ),
        );
      },
    );
  }

  Widget getLine() {
    return SizedBox(
      height: 0.5,
      child: Container(
        color: Colors.grey,
      ),
    );
  }

  Widget getListTile(title, {Function()? onTap}) {
    return ListTile(
      title: Text(title),
      onTap: onTap,
    );
  }
}
