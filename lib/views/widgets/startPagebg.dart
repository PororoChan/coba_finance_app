import 'package:flutter/material.dart';
import 'package:coba_finance_app/colors/color.dart';

class StartBg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
              color: blurWhite,
            ),
            Container(
              alignment: Alignment.topLeft,
              height: MediaQuery.of(context).size.height / 4,
              width: MediaQuery.of(context).size.width / 2,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [ltBlue, softPurple]),
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(100),
                  )),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                  alignment: Alignment.bottomRight,
                  height: MediaQuery.of(context).size.height / 4,
                  width: MediaQuery.of(context).size.width / 2.5,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [
                            softPurple,
                            ltBlue,
                          ]),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(100),
                      ))),
            ),
      ]
    );
  }
}