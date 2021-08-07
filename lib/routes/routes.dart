import 'package:flutter/material.dart';

// Routes
import 'package:site/screens/home_screen.dart';

class Routes {
  Routes._(); //this is to prevent anyone from instantiate this object

  static const String home = '/home';

  static final routes = <String, WidgetBuilder>{
    home: (BuildContext context) => HomeScreen(),
  };
}
