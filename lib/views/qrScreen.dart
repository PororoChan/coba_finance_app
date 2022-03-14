import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:get/get.dart';
import 'package:coba_finance_app/colors/color.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class QrScreen extends StatefulWidget {
  const QrScreen({Key? key}) : super(key: key);

  @override
  State<QrScreen> createState() => _QrScreenState();
}

class _QrScreenState extends State<QrScreen> {
  @override
  Widget build(BuildContext context) {
    var layout = MediaQuery.of(context).size;

    return SafeArea(
      bottom: false,
      right: false,
      left: false,
      child: Scaffold(
          extendBody: true,
          body: Container(
            height: layout.height,
            width: layout.width,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    end: Alignment.topLeft,
                    colors: [
                  scan1,
                  scan2,
                  scan3,
                  scan4,
                  scan5,
                ])),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 10.h,
                    right: 8.w,
                    left: 18.w,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      NeumorphicButton(
                        onPressed: () {
                          Get.back();
                        },
                        padding: EdgeInsets.symmetric(
                          vertical: 5.h,
                          horizontal: 5.w,
                        ),
                        style: NeumorphicStyle(
                          depth: 1,
                          intensity: 1,
                          color: softWhite,
                          lightSource: LightSource.bottomRight,
                        ),
                        child: Icon(
                          Icons.arrow_back_ios,
                          size: 14.sp,
                          color: scan5,
                        ),
                      ),
                      NeumorphicText(
                        "Scan",
                        style: NeumorphicStyle(
                          depth: 0,
                          intensity: 0,
                          color: blurWhite,
                        ),
                        textStyle: NeumorphicTextStyle(
                            fontFamily: "Cool",
                            fontWeight: FontWeight.w800,
                            fontSize: 20.sp),
                      ),
                      PopupMenuButton(
                        icon: Icon(
                          Icons.more_vert,
                          size: 24.sp,
                          color: softWhite,
                        ),
                        itemBuilder: (BuildContext context) {
                          return [
                            PopupMenuItem(
                              onTap: () {
                                Get.snackbar(
                                    "Settings",
                                    "Halo ini dengan settings",
                                    backgroundColor: blurWhite,
                                    colorText: softDark,
                                );
                              },
                              child: Text("Settings"),
                            ),
                            PopupMenuItem(
                              onTap: () {
                                Get.snackbar(
                                    "Go Back",
                                    "Halo ini dengan Go Back",
                                    backgroundColor: blurWhite,
                                    colorText: softDark,
                                );
                              },
                              child: Text("Go Back"),
                            )
                          ];
                        },
                      )
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  width: 250.w,
                  height: 250.h,
                  child: QrImage(
                    size: 200.w,
                    data: "Percobaan Scanner",
                    version: QrVersions.auto,
                    foregroundColor: softWhite,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(18.0),
                  child: FlatButton(
                    onPressed: () {},
                    height: 50.h,
                    minWidth: layout.width,
                    color: softWhite.withOpacity(0.2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.qr_code,
                          size: 22.sp,
                          color: softWhite.withOpacity(0.8),
                        ),
                        SizedBox(
                          width: 8.w,
                        ),
                        Text(
                          "Show Your Spot Code",
                          style: TextStyle(
                              fontFamily: "Cool",
                              fontWeight: FontWeight.w700,
                              fontSize: 14.sp,
                              color: softWhite.withOpacity(0.8)),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
