import 'package:flutter/material.dart';
import 'package:templete_example/colors.dart';
import 'package:templete_example/navigation/routes.dart';

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
