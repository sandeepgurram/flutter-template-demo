import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DialogTemplate extends StatelessWidget {
  String title;
  String subTitle;
  Widget content;

  final double _formCornerRadius = 50.0;

  List<Widget> headerList;

  DialogTemplate(this.title, this.subTitle, this.content) {
    headerList = List();

    headerList.add(buildHeaderText());

    if (subTitle != null && subTitle.isNotEmpty) {
      headerList.add(buildSpace());
      headerList.add(buildSubTitle());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Theme.of(context).primaryColorLight,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(_formCornerRadius)),
      child: Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  children: headerList,
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(_formCornerRadius),
                  color: Colors.white),
              child: Column(
                children: <Widget>[
                  content,
                  InkWell(
                    onTap: () => {Navigator.pop(context)},
                    child: Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(24),
                        child: Text(
                          "Okay",
                          textAlign: TextAlign.end,
                          textScaleFactor: 1.3,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Text buildSubTitle() {
    return Text(
      subTitle,
      textAlign: TextAlign.center,
    );
  }

  Text buildHeaderText() {
    return Text(
      title,
      textScaleFactor: 1.3,
      textAlign: TextAlign.center,
      style: TextStyle(fontWeight: FontWeight.bold),
    );
  }

  SizedBox buildSpace({double wt = 8, double ht = 8}) => SizedBox(
        height: ht,
        width: wt,
      );
}
