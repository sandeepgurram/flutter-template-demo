import 'package:flutter/material.dart';
import 'package:template_example/templates/ContentTemplate.dart';
import 'package:template_example/templates/ScreenTemplate.dart';

class ScreenWithTemplate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTemplate(
        Padding(
          padding: EdgeInsets.symmetric(
              vertical: 20, horizontal: 20),
          child: Text(
            "Second Screen",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white),
            textScaleFactor: 3,
          ),
        ),
      FloatingActionButton(child: Icon(Icons.navigate_next),),
      ContentTemplate(Text("This is body")),
    );
  }
}
