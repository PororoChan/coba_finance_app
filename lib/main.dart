import 'package:coba_finance_app/views/qrScreen.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:coba_finance_app/views/homePage.dart';
import 'package:coba_finance_app/views/notifPage.dart';
import 'package:coba_finance_app/views/loginPage.dart';
import 'package:coba_finance_app/views/walletPage.dart';
import 'package:coba_finance_app/views/starterPage.dart';
import 'package:coba_finance_app/views/settingsPage.dart';
import 'package:coba_finance_app/views/registerPage.dart';
import 'package:coba_finance_app/views/sidebar-page/profilesPage.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  runApp(ScreenUtilInit(
    designSize: Size(375, 812),
    minTextAdapt: true,
    splitScreenMode: true,
    builder: () => GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/start",

      getPages: [
        GetPage(
          name: "/start", 
          page: () => StarterPage(),
        ),
        GetPage(
          name: "/home", 
          page: () => HomePage(),
        ),
        GetPage(
          name: "/scan", 
          page: () => QrScreen()
        ),
        GetPage(
          name: "/login", 
          page: () => LoginPage()
        ),
        GetPage(
          name: "/regist", 
          page: () => RegisterPage()
        ),
        GetPage(
          name: "/wallet", 
          page: () => WalletPage()
        ),
        GetPage(
          name: "/notif", 
          page: () => Notifications()
        ),
        GetPage(
          name: "/settings", 
          page: () => SettingsPage()
        ),
        GetPage(
          name: "/profiles", 
          page: () => ProfilePage()
        ),
      ],
    ),
  ));
}

