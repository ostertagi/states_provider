import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:states_bloc/pages/drawer_menu.dart';
import 'package:states_bloc/providers/slide_model.dart';
import 'package:states_bloc/providers/text_model.dart';

class SettingsPage extends StatelessWidget {
  static const routeName = '/settings';

  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<TextModel>(
      builder: (context, textModel, child) {
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
                  'Font Size: ${textModel.fontSize.toInt()}',
                  style: TextStyle(
                      fontSize:
                          Theme.of(context).textTheme.displayLarge!.fontSize),
                ),
              ),
              Consumer<SlideModel>(builder: (context, slideModel, child) {
                return Slider(
                    min: 0.5,
                    value: slideModel.slider,
                    onChanged: (newVal) {
                      slideModel.updateSlider(newVal);
                    });
              }),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  children: <Widget>[
                    Checkbox(
                      value: textModel.bold,
                      onChanged: (newVal) {
                        textModel.bold = newVal;
                      },
                    ),
                    Text(
                      'Bold',
                      style: getStyle(
                        textModel.fontSize,
                        textModel.bold,
                        false,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  children: <Widget>[
                    Checkbox(
                        value: textModel.italic,
                        onChanged: (newVal) {
                          textModel.italic = newVal;
                        }),
                    Text(
                      'Italic',
                      style: getStyle(
                        textModel.fontSize,
                        false,
                        textModel.italic,
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