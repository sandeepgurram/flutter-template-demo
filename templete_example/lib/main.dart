import 'package:flutter/material.dart';

import 'colors.dart';
import 'navigation/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Plan Your Shoot',
      theme: ThemeData(
        primarySwatch: primaryColor,
        accentColor: accentColor,
        scaffoldBackgroundColor: backgroudColor,
      ),
      initialRoute: '/',
      routes: getRoutes(),
    );
  }
}
