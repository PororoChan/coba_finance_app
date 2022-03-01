import 'package:flutter/material.dart';
import 'package:coba_finance_app/colors/color.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SideBar extends StatefulWidget {
  const SideBar({ Key? key }) : super(key: key);

  @override
  _SideBarState createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: blurWhite,
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image(
                  image: AssetImage("assets/images/selenagmz.jpg"),
                  fit: BoxFit.cover,
                  width: 85.w,
                  height: 85.h,
                ),
              ),
            ),
            accountName: Text(
              "Selena Gomez",
              style: TextStyle(
                fontFamily: "Cool",
                fontWeight: FontWeight.bold,
                fontSize: 16.sp,
                color: blurWhite,
              ),
            ),
            accountEmail: Text(
              "SelenaGomez08@gmail.com",
              style: TextStyle(
                fontFamily: "Cool",
                fontWeight: FontWeight.normal,
                fontSize: 12.sp,
                color: blurWhite,
              ),
            ),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  blPurple,
                  softPurple,
                ]
              )
            ),
          )
        ]
      ),
    );
  }
}