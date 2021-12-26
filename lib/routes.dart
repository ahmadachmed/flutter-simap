import 'package:flutter/widgets.dart';

import 'detailPerizinan/detailPerizinan.dart';
import 'homeScreen/homeScreen.dart';
import 'loginScreen/loginScreen.dart';
import 'splashScreen/splashScreen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  DetailPerizinan.routeName: (context) => DetailPerizinan(),
  LoginScreen.routeName: (context) => LoginScreen(),
};
