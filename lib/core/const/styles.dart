import 'package:flutter/material.dart';

const begin = Offset(1.0, 0.0);
const end = Offset(0.0, 0.0);
const curve = Curves.ease;
var expoTween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

Color zeroCyan = const Color(0xFF00EFEF);
Color zeroLightBlue = const Color(0xFFB9E0FF);
Color zeroLightPink = const Color(0xFFDE8FFF);
Color zeroBlack = const Color(0xFF000000);
Color zeroLightPurple = const Color(0xFF8D9EFF);
Color zeroRed = const Color(0xFFFF7777);
Color zeroPurple = const Color(0xFF8D72E1);
Color zeroWhite = const Color(0xFFFFFFFF);
Color zeroGreen = const Color(0xFF54B435);
Color zeroDarkGreen = const Color(0xFF379237);

Map<int, Color> getSwatch(Color color) {
  return {
     50:color,
    100:color,
    200:color,
    300:color,
    400:color,
    500:color,
    600:color,
    700:color,
    800:color,
    900:color,
  };
}

ThemeData lightTheme = ThemeData(
  fontFamily: 'quicksand',
  iconTheme: IconThemeData(color: zeroCyan), 
  primarySwatch: MaterialColor(zeroPurple.value, getSwatch(zeroPurple)),
  primaryColor: zeroPurple,
  brightness: Brightness.light,
  scaffoldBackgroundColor: zeroWhite,
  dividerColor: Colors.grey,
  listTileTheme: ListTileThemeData(
    textColor: zeroCyan,
  ),  
);


// darkTheme = ThemeData(
//   fontFamily: 'Quicksand',
//   inputDecorationTheme: darkInputDecoration,
//   iconTheme: IconThemeData(color: expoLightGrey), 
//   primarySwatch: MaterialColor(expoBlue.value, getSwatch(expoBlue)),
//   primaryColor: zeroWhite,
//   brightness: Brightness.dark,
//   scaffoldBackgroundColor: const Color(0xFF212121),
//   dividerColor: expoLightGrey,
// );