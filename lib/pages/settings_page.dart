import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:states_bloc/pages/drawer_menu.dart';
import 'package:states_bloc/providers/app_state.dart';

class SettingsPage extends StatefulWidget {
  static const routeName = '/settings';

  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<AppState>(
      builder: (context, state, child) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.teal,
            title: const Text('Settings'),
          ),
          drawer: const DrawerMenu(),
          //input and output
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 20),
                child: Text(
                  'Font Size: ${state.textState.fontSize.toInt()}',
                  style: TextStyle(
                      fontSize:
                          Theme.of(context).textTheme.displayLarge!.fontSize),
                ),
              ),
              Slider(
                  min: 0.5,
                  value: state.slideState.slider,
                  onChanged: (newVal) {
                    state.slideState.updateSlider(newVal);
                  }),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  children: <Widget>[
                    Checkbox(
                      value: state.textState.bold,
                      onChanged: (newVal) {
                        state.textState.bold = newVal;
                      },
                    ),
                    getBold(),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  children: <Widget>[
                    Checkbox(
                        value: state.textState.italic,
                        onChanged: (newVal) {
                          state.textState.italic = newVal;
                        }),
                    Text(
                      'Italic',
                      style: getStyle(
                        state.textState.fontSize,
                        false,
                        state.textState.italic,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  // Text getBold(TextModel textModel) {
  //   return Text(
  //                   'Bold',
  //                   style: getStyle(
  //                     textModel.fontSize,
  //                     textModel.bold,
  //                     false,
  //                   ),
  //                 );
  // }

  Text getBold() {
    return Text(
      'Bold',
      style: getStyle(
        Provider.of<AppState>(context, listen: false).textState.fontSize,
        Provider.of<AppState>(context, listen: false).textState.bold,
        false,
      ),
    );
  }

  TextStyle getStyle(
      [double size = 18, bool isBold = false, bool isItalic = false]) {
    return TextStyle(
      fontSize: size,
      fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
      fontStyle: isItalic ? FontStyle.italic : FontStyle.normal,
    );
  }
}

/*
 return StoreConnector<AppState, SettingsViewModel>(
        //converter: (store) => store.state,
        converter: (store) {
      return new SettingsViewModel(
        slider: store.state.sliderState.slider,
        fontSize: store.state.textState.fontSize,
        bold: store.state.textState.bold,
        italic: store.state.textState.italic,
        sliderCallback: ((newValue) =>
            store.dispatch(new SliderAction(newValue))),
        boldCallback: ((newValue) => store.dispatch(new BoldAction(newValue))),
        italicCallback: ((newValue) =>
            store.dispatch(new ItalicAction(newValue))),
      );
    }, builder: (context, viewModel) {
      return ;
    });*/