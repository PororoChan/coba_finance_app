import 'package:flutter/material.dart';
import 'package:coba_finance_app/colors/color.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SideBar extends StatefulWidget {
  const SideBar({Key? key}) : super(key: key);

  @override
  _SideBarState createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: blurWhite,
      child: ListView(children: [
        _headerDrawer(),
        _drawerItem(
          icon: Icons.person_outline,
          text: "Profiles",
          onTap: () {
            Get.toNamed("/profiles");
          },
        ),
        _drawerItem(
          icon: Icons.qr_code,
          text: "My QR Code",
          onTap: () {
            Get.toNamed("/scan");
          },
        ),
        _drawerItem(
          icon: Icons.info_outline,
          text: "About us",
          onTap: () {},
        ),
        _drawerItem(
          icon: Icons.logout,
          text: "Log Out",
          onTap: () {
            Get.offAllNamed("/login");
          },
        )
      ]),
    );
  }

  Widget _headerDrawer() {
    return UserAccountsDrawerHeader(
      otherAccountsPictures: [
        ClipOval(
          child: Image(
            image: AssetImage("assets/images/man.png"),
          ),
        ),
        ClipOval(
          child: Image(image: AssetImage("assets/images/woman.png")),
        )
      ],
      currentAccountPicture: ClipOval(
        child: Image(
          image: AssetImage("assets/images/selenagmz.jpg"),
          fit: BoxFit.cover,
          width: 75.w,
          height: 75.h,
        ),
      ),
      accountName: Text(
        "Selena Gomez",
        style: TextStyle(
          fontFamily: "Cool",
          fontWeight: FontWeight.w500,
          fontSize: 16.sp,
          color: blurWhite,
        ),
      ),
      accountEmail: Text(
        "Selenagmz08@gmail.com",
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
          ])),
    );
  }

  Widget _drawerItem(
      {required IconData icon,
      required String text,
      required GestureTapCallback onTap}) {
    return ListTile(
      contentPadding: EdgeInsets.only(
        left: 24.0,
        top: 1.0,
        bottom: 8.0,
      ),
      title: Row(
        children: <Widget>[
          Icon(
            icon,
            size: 18.sp,
            color: blPurple,
          ),
          Padding(
            padding: EdgeInsets.only(left: 18.0),
            child: Text(
              text,
              style: TextStyle(
                fontFamily: "Cool",
                fontWeight: FontWeight.w400,
                fontSize: 12.sp,
                color: softDark,
              ),
            ),
          ),
        ],
      ),
      onTap: onTap,
    );
  }
}
