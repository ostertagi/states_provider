import 'package:states_bloc/providers/app_state.dart';

class TextState {
  late AppState parent;

  late double _fontSize;
  late bool _bold;
  late bool _italic;

  TextState(this.parent) {
    print("abdelghani from TExtMdeol");
    _fontSize = 12;
    _bold = false;
    _italic = false;
    print("fontSize $_fontSize");
  }

  get fontSize => _fontSize;

  set fontSize(value) {
    _fontSize = value;
    // notifyListeners();
    parent.notify();
  }

  get bold => _bold;

  set bold(value) {
    _bold = value;
    // notifyListeners();
    parent.notify();
  }

  get italic => _italic;

  set italic(value) {
    _italic = value;
    // notifyListeners();
    parent.notify();
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
