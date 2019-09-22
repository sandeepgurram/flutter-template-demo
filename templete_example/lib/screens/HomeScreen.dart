import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:template_example/navigation/NavigationHelper.dart';

import '../colors.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.navigate_next),
        onPressed: (){launchScreenWithTemplate(context);},
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Flexible(
                flex: 2,
                fit: FlexFit.tight,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Flexible(flex: 1, fit: FlexFit.tight, child: Icon(Icons.menu,color: Colors.white,size: 38,)),
                    Flexible(
                        flex: 9,
                        fit: FlexFit.tight,
                        child: FittedBox(
                          fit: BoxFit.fitHeight,
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 20, horizontal: 20),
                            child: Text(
                              "Header",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                              textScaleFactor: 3,
                            ),
                          ),
                        )),
                  ],
                )),
            Flexible(
                flex: 15,
                fit: FlexFit.tight,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50)),
                  child: SingleChildScrollView(
                      child: ConstrainedBox(
                    constraints: new BoxConstraints(
                      minHeight: 700.0,
                    ),
                    child: DecoratedBox(
                      decoration: new BoxDecoration(color: Colors.white),
                      child: Padding(
                          padding:
                              EdgeInsets.only(top: 46, left: 24, right: 24),
                          child: Container(
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: <Widget>[
                                Text("Line 1"),
                                Text("Line 2"),
                                Text("Line 3"),
                                Text("Line 4"),
                              ],
                            ),
                          )),
                    ),
                  )),
                )),
          ],
        ),
      ),
    );
  }
}
