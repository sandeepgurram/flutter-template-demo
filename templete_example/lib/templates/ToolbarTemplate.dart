import 'package:flutter/material.dart';

import 'ContentTemplate.dart';

class ToolbarTemplate extends StatelessWidget {
  Widget toolbar;
  ContentTemplate contentTemplate;

  ToolbarTemplate(this.toolbar, this.contentTemplate);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Flexible(flex: 2, fit: FlexFit.tight, child: toolbar),
          Flexible(flex: 15, fit: FlexFit.tight, child: Container(
              width: double.infinity,
              child: contentTemplate)),
        ],
      )),
    );
  }
}
