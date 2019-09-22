import 'package:flutter/material.dart';

class ContentTemplate extends StatelessWidget {
  Widget contentWidget;

  final EdgeInsets formScreenTopPadding =
      EdgeInsets.only(top: 46, left: 24, right: 24);

  ContentTemplate(this.contentWidget);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50), topRight: Radius.circular(50)),
      child: SingleChildScrollView(
          child: ConstrainedBox(
        constraints: new BoxConstraints(
          minHeight: 700.0,
        ),
        child: DecoratedBox(
          decoration: new BoxDecoration(color: Colors.white),
          child: Padding(padding: formScreenTopPadding, child: Container(width: double.infinity, child: contentWidget)),
        ),
      )),
    );
  }
}
