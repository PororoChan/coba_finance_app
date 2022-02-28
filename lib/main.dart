import 'package:coba_finance_app/views/registerPage.dart';
import 'package:flutter/material.dart';
import 'package:coba_finance_app/views/homePage.dart';
import 'package:coba_finance_app/views/loginScreen.dart';
import 'package:coba_finance_app/views/starterPage.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  Widget? child;
  runApp(ScreenUtilInit(
    designSize: Size(375, 812),
    minTextAdapt: true,
    splitScreenMode: true,
    builder: () => MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/start",
      routes: <String, WidgetBuilder> {
        "/start": (context) => StarterPage(),
        "/login": (context) => LoginScreen(),
        "/home": (context) => HomePage(),
        "/regist": (context) => RegisterPage(),
      },
    ),
  ));
}

