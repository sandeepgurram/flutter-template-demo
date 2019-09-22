import 'package:flutter/material.dart';
import 'package:template_example/screens/HomeScreen.dart';
import 'package:template_example/screens/ScreenWithTemplate.dart';

Map<String, WidgetBuilder> getRoutes() {
  return {
    '/': (context) => HomeScreen(),
    ScreenWithTemplateRoute: (context) => ScreenWithTemplate(),
  };
}


const ScreenWithTemplateRoute = "ScreenWithTemplateRoute";