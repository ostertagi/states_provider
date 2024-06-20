import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';
import 'package:provider/provider.dart';
import 'package:states_bloc/pages/drawer_menu.dart';
import 'package:states_bloc/providers/app_state.dart';
import 'package:states_bloc/providers/text_state.dart';

const kAppTitle = 'States by Provider';
const kStateType = '...';

class HomePage extends StatelessWidget {
  static const routeName = '/';
  String text = lorem(paragraphs: 3, words: 50);

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AppState>(
      builder: (context, state, child) {
        return Scaffold(
          appBar: AppBar(
            title: const Text(kAppTitle),
            backgroundColor: Colors.teal,
          ),
          drawer: const DrawerMenu(),
          body: Container(
            margin: const EdgeInsets.all(10),
            child: RichText(
              text: TextSpan(
                text: text,
                style: TextStyle(
                    fontSize: state.textState.fontSize,
                    color: Colors.black,
                    fontWeight: state.textState.bold
                        ? FontWeight.bold
                        : FontWeight.normal,
                    fontStyle: state.textState.italic
                        ? FontStyle.italic
                        : FontStyle.normal),
              ),
            ),
          ),
        );
      },
    );
  }
}
