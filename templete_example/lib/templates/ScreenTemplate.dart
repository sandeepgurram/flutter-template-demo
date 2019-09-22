import 'package:flutter/material.dart';

import '../colors.dart';
import 'ContentTemplate.dart';

class ScreenTemplate extends StatelessWidget {
  Widget toolbar;
  Widget floatingButton;
  ContentTemplate contentTemplate;

  ScreenTemplate(this.toolbar, this.floatingButton, this.contentTemplate);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      floatingActionButton: floatingButton,
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Flexible(flex: 2, fit: FlexFit.tight, child: toolbar),
          Flexible(flex: 15, fit: FlexFit.tight, child: contentTemplate),
        ],
      )),
    );
  }
}
