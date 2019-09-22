import 'package:flutter/material.dart';
import 'package:templete_example/screens/HomeScreen.dart';

Map<String, WidgetBuilder> getRoutes() {
  return {
    '/': (context) => HomeScreen(),
  };
}
