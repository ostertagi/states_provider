import 'package:flutter/material.dart';

class TextState extends ChangeNotifier {
  late double _fontSize;
  late bool _bold;
  late bool _italic;

  TextState() {
    print("abdelghani from TExtMdeol");
    _fontSize = 12;
    _bold = false;
    _italic = false;
    print("fontSize $_fontSize");
  }

  get fontSize => _fontSize;

  set fontSize(value) {
    _fontSize = value;
    notifyListeners();
  }

  get bold => _bold;

  set bold(value) {
    _bold = value;
    notifyListeners();
  }

  get italic => _italic;

  set italic(value) {
    _italic = value;
    notifyListeners();
  }
}



 
// @override
// Widget build(BuildContext context) {
// return MultiProvider(
//   providers: [
//     ChangeNotifierProvider<FirstProvider>(
//       create: (context) => FirstProvider(),
//     ),
//     ChangeNotifierProvider<SecondProvider>(
//       create: (context) => SecondProvider(),
//     ),
//     ChangeNotifierProvider<ThirdProvider>(
//       create: (context) => ThirdProvider(),
//     ),
//     ChangeNotifierProvider<FourthProvider>(
//       create: (context) => FourthProvider(),
//     ),
//   ],
//   child: const MainApp(),
//  );
// }

// Because sometimes I need to either get data or call functions from different providers from another provider, I am using it like this:

// //First Provider
// class FirstProvider with ChangeNotifier { 
  
//  void callFunctionFromSecondProvider({
//    required BuildContext context,
//  }) {

//   //Access the SecondProvider
//   final secondProvider= Provider.of<SecondProvider>(
//     context,
//     listen: false,
//   );

//    secondProvider.myFunction();
//  }
// }

 
// //Second Provider
// class SecondProvider with ChangeNotifier { 
//   bool _currentValue = true;

//    void myFunction(){
//      //Do something
//    }

// }