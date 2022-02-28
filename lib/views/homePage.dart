import 'package:coba_finance_app/views/notifPage.dart';
import 'package:coba_finance_app/views/settingsPage.dart';
import 'package:coba_finance_app/views/walletPage.dart';
import 'package:flutter/material.dart';
import 'package:coba_finance_app/colors/color.dart';
import 'package:flutter/services.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

//var
int _pageIndex = 0;

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var layout = MediaQuery.of(context);
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    return Scaffold(
      extendBody: true,
      body: SafeArea(
        bottom: false,
        left: false,
        right: false,
        child: Stack(
          children: [
            Container(
              height: layout.size.height,
              width: layout.size.width,
              color: blPurple,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                  padding: EdgeInsets.all(18.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                              onPressed: () {
                                print("menu");
                              },
                              icon: Icon(
                                Icons.menu,
                                size: 38.sp,
                                color: softWhite,
                              )),
                          NeumorphicText(
                            "MezzFinance",
                            style: NeumorphicStyle(
                              depth: 2,
                              lightSource: LightSource.left,
                              shadowDarkColor: blurWhite.withOpacity(0.5),
                              color: softWhite,
                            ),
                            textStyle: NeumorphicTextStyle(
                              fontFamily: "Cool",
                              fontWeight: FontWeight.bold,
                              fontSize: 24.sp,
                            ),
                          ),
                          CircleAvatar(
                              radius: 24.sp,
                              backgroundColor: softWhite,
                              child: CircleAvatar(
                                radius: 23.sp,
                                backgroundImage:
                                    AssetImage('assets/images/selenagmz.jpg'),
                              ))
                        ],
                      ),
                      SizedBox(
                        height: 24.h,
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Align(
                            alignment: Alignment.topLeft,
                            child: NeumorphicText(
                              "Hi, Selena Gomez",
                              style: NeumorphicStyle(
                                depth: 1,
                                shadowDarkColor: blurWhite,
                                lightSource: LightSource.left,
                                color: softWhite,
                              ),
                              textStyle: NeumorphicTextStyle(
                                fontFamily: "Cool",
                                fontWeight: FontWeight.normal,
                                fontSize: 18.sp,
                              ),
                            )),
                      ),
                      Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Align(
                              alignment: Alignment.topLeft,
                              child: NeumorphicText("@Selena01",
                                  style: NeumorphicStyle(
                                    depth: 1,
                                    shadowDarkColor: blurWhite,
                                    lightSource: LightSource.left,
                                    color: softWhite,
                                  ),
                                  textStyle: NeumorphicTextStyle(
                                    fontFamily: "Cool",
                                    fontWeight: FontWeight.normal,
                                    fontSize: 14.sp,
                                  )))),
                      SizedBox(
                        height: 18.h,
                      ),
                    ],
                  )),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: layout.size.width,
                height: layout.size.height / 1.4,
                decoration: BoxDecoration(
                    color: softWhite,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(28.0),
                      topRight: Radius.circular(28.0),
                    )),
              ),
            ),
            Positioned(
              top: 175.h,
              left: 32.w,
              right: 32.w,
              child: Align(
                alignment: Alignment.topCenter,
                child: Container(
                    height: 185.h,
                    width: layout.size.width,
                    decoration: BoxDecoration(
                      color: blurWhite,
                      borderRadius: BorderRadius.circular(24.r),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(20.0),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                NeumorphicText(
                                  "My Balance",
                                  style: NeumorphicStyle(
                                      depth: 1,
                                      lightSource: LightSource.left,
                                      color: softGrey.withOpacity(0.6)),
                                  textStyle: NeumorphicTextStyle(
                                    fontFamily: "Cool",
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14.sp,
                                  ),
                                ),
                                NeumorphicText(
                                  "Rp. 250.000,00",
                                  style: NeumorphicStyle(
                                    depth: 1,
                                    lightSource: LightSource.left,
                                    color: softDark.withOpacity(0.8),
                                  ),
                                  textStyle: NeumorphicTextStyle(
                                    fontFamily: "Cool",
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14.sp,
                                  ),
                                )
                              ]),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Padding(
                            padding: EdgeInsets.all(20.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  children: [
                                    CircleAvatar(
                                        radius: 22.w,
                                        backgroundColor: grBalls,
                                        child: IconButton(
                                          onPressed: () {},
                                          icon: Icon(Icons.payments_outlined,
                                              size: 24.sp, color: softWhite),
                                        )),
                                    SizedBox(
                                      height: 8.h,
                                    ),
                                    NeumorphicText(
                                      "Pay",
                                      style: NeumorphicStyle(
                                          depth: 1,
                                          lightSource: LightSource.left,
                                          color: softDark.withOpacity(0.8)),
                                      textStyle: NeumorphicTextStyle(
                                        fontFamily: "Cool",
                                        fontWeight: FontWeight.w700,
                                        fontSize: 14.sp,
                                      ),
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    CircleAvatar(
                                        radius: 22.w,
                                        backgroundColor: blBalls,
                                        child: IconButton(
                                          onPressed: () {},
                                          icon: Icon(
                                              Icons.account_balance_outlined,
                                              size: 24.sp,
                                              color: softWhite),
                                        )),
                                    SizedBox(
                                      height: 8.h,
                                    ),
                                    NeumorphicText("UPI",
                                        style: NeumorphicStyle(
                                          depth: 1,
                                          lightSource: LightSource.left,
                                          color: softDark.withOpacity(0.8),
                                        ),
                                        textStyle: NeumorphicTextStyle(
                                            fontFamily: "Cool",
                                            fontWeight: FontWeight.w700,
                                            fontSize: 14.sp))
                                  ],
                                ),
                                Column(
                                  children: [
                                    CircleAvatar(
                                        radius: 22.w,
                                        backgroundColor: plBalls,
                                        child: IconButton(
                                          onPressed: () {},
                                          icon: Icon(Icons.send_outlined,
                                              size: 24.sp, color: softWhite),
                                        )),
                                    SizedBox(
                                      height: 8.h,
                                    ),
                                    NeumorphicText(
                                      "Send",
                                      style: NeumorphicStyle(
                                        depth: 1,
                                        lightSource: LightSource.left,
                                        color: softDark.withOpacity(0.8),
                                      ),
                                      textStyle: NeumorphicTextStyle(
                                        fontFamily: "Cool",
                                        fontWeight: FontWeight.w700,
                                        fontSize: 14.sp,
                                      ),
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    CircleAvatar(
                                        radius: 22.w,
                                        backgroundColor: orgBalls,
                                        child: IconButton(
                                          onPressed: () {},
                                          icon: Icon(
                                              Icons
                                                  .account_balance_wallet_outlined,
                                              size: 24.sp,
                                              color: softWhite),
                                        )),
                                    SizedBox(
                                      height: 8.h,
                                    ),
                                    NeumorphicText(
                                      "Wallet",
                                      style: NeumorphicStyle(
                                          depth: 1,
                                          lightSource: LightSource.left,
                                          color: softDark.withOpacity(0.8)),
                                      textStyle: NeumorphicTextStyle(
                                          fontFamily: "Cool",
                                          fontWeight: FontWeight.w700,
                                          fontSize: 14.sp),
                                    )
                                  ],
                                )
                              ],
                            )),
                      ],
                    )),
              ),
            ),
            Positioned(
                top: 380.h,
                left: 28.w,
                right: 28.w,
                child: SingleChildScrollView(
                  child: Container(
                      height: layout.size.height,
                      width: layout.size.width,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              NeumorphicText("Recharge & Bill Payments",
                                  style: NeumorphicStyle(
                                    depth: 1,
                                    lightSource: LightSource.left,
                                    color: softDark,
                                  ),
                                  textStyle: NeumorphicTextStyle(
                                    fontFamily: "Cool",
                                    fontWeight: FontWeight.w700,
                                    fontSize: 14.sp,
                                  ))
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: 250.h,
                                child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          print("recharge");
                                        },
                                        child: Container(
                                            padding: EdgeInsets.only(
                                              top: 25.h,
                                            ),
                                            width: 85.w,
                                            height: 95.h,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(8.r),
                                              color: blurWhite,
                                            ),
                                            child: Column(
                                              children: [
                                                Icon(
                                                  Icons.phone_outlined,
                                                  size: 30.sp,
                                                  color: ltBlue,
                                                ),
                                                SizedBox(
                                                  height: 10.h,
                                                ),
                                                NeumorphicText(
                                                  "Recharge",
                                                  style: NeumorphicStyle(
                                                      depth: 1,
                                                      lightSource:
                                                          LightSource.left,
                                                      color: softDark
                                                          .withOpacity(0.8)),
                                                  textStyle:
                                                      NeumorphicTextStyle(
                                                    fontFamily: "Cool",
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    fontSize: 12.sp,
                                                  ),
                                                )
                                              ],
                                            )),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          print("broadband");
                                        },
                                        child: Container(
                                            padding: EdgeInsets.only(
                                              top: 25.h,
                                            ),
                                            width: 85.w,
                                            height: 95.h,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(8.r),
                                              color: blurWhite,
                                            ),
                                            child: Column(
                                              children: [
                                                Icon(
                                                  Icons.router_outlined,
                                                  size: 30.sp,
                                                  color: ltBlue,
                                                ),
                                                SizedBox(
                                                  height: 10.h,
                                                ),
                                                NeumorphicText(
                                                  "Broadband",
                                                  style: NeumorphicStyle(
                                                      depth: 1,
                                                      lightSource:
                                                          LightSource.left,
                                                      color: softDark
                                                          .withOpacity(0.8)),
                                                  textStyle:
                                                      NeumorphicTextStyle(
                                                    fontFamily: "Cool",
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    fontSize: 12.sp,
                                                  ),
                                                )
                                              ],
                                            )),
                                      )
                                    ]),
                              ),
                              Container(
                                height: 250.h,
                                child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          print("electricity");
                                        },
                                        child: Container(
                                            padding: EdgeInsets.only(
                                              top: 25.h,
                                            ),
                                            width: 85.w,
                                            height: 95.h,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(8.r),
                                              color: blurWhite,
                                            ),
                                            child: Column(
                                              children: [
                                                Icon(
                                                  Icons.lightbulb_outline,
                                                  size: 30.sp,
                                                  color: ltBlue,
                                                ),
                                                SizedBox(
                                                  height: 10.h,
                                                ),
                                                NeumorphicText(
                                                  "Electricity",
                                                  style: NeumorphicStyle(
                                                      depth: 1,
                                                      lightSource:
                                                          LightSource.left,
                                                      color: softDark
                                                          .withOpacity(0.8)),
                                                  textStyle:
                                                      NeumorphicTextStyle(
                                                    fontFamily: "Cool",
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    fontSize: 12.sp,
                                                  ),
                                                )
                                              ],
                                            )),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          print("gifts");
                                        },
                                        child: Container(
                                            padding: EdgeInsets.only(
                                              top: 25.h,
                                            ),
                                            width: 85.w,
                                            height: 95.h,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(8.r),
                                              color: blurWhite,
                                            ),
                                            child: Column(
                                              children: [
                                                Icon(
                                                  Icons.wallet_giftcard,
                                                  size: 30.sp,
                                                  color: ltBlue,
                                                ),
                                                SizedBox(
                                                  height: 10.h,
                                                ),
                                                NeumorphicText(
                                                  "Gifts",
                                                  style: NeumorphicStyle(
                                                      depth: 1,
                                                      lightSource:
                                                          LightSource.left,
                                                      color: softDark
                                                          .withOpacity(0.8)),
                                                  textStyle:
                                                      NeumorphicTextStyle(
                                                    fontFamily: "Cool",
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    fontSize: 12.sp,
                                                  ),
                                                )
                                              ],
                                            )),
                                      )
                                    ]),
                              ),
                              Container(
                                height: 250.h,
                                child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          print("insurance");
                                        },
                                        child: Container(
                                            padding: EdgeInsets.only(
                                              top: 25.h,
                                            ),
                                            width: 85.w,
                                            height: 95.h,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(8.r),
                                              color: blurWhite,
                                            ),
                                            child: Column(
                                              children: [
                                                Icon(
                                                  Icons
                                                      .personal_injury_outlined,
                                                  size: 30.sp,
                                                  color: ltBlue,
                                                ),
                                                SizedBox(
                                                  height: 10.h,
                                                ),
                                                NeumorphicText(
                                                  "Insurance",
                                                  style: NeumorphicStyle(
                                                      depth: 1,
                                                      lightSource:
                                                          LightSource.left,
                                                      color: softDark
                                                          .withOpacity(0.8)),
                                                  textStyle:
                                                      NeumorphicTextStyle(
                                                    fontFamily: "Cool",
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    fontSize: 12.sp,
                                                  ),
                                                )
                                              ],
                                            )),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          print("food");
                                        },
                                        child: Container(
                                            padding: EdgeInsets.only(
                                              top: 25.h,
                                            ),
                                            width: 85.w,
                                            height: 95.h,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(8.r),
                                              color: blurWhite,
                                            ),
                                            child: Column(
                                              children: [
                                                Icon(
                                                  Icons.food_bank_outlined,
                                                  size: 30.sp,
                                                  color: ltBlue,
                                                ),
                                                SizedBox(
                                                  height: 10.h,
                                                ),
                                                NeumorphicText(
                                                  "Food",
                                                  style: NeumorphicStyle(
                                                      depth: 1,
                                                      lightSource:
                                                          LightSource.left,
                                                      color: softDark
                                                          .withOpacity(0.8)),
                                                  textStyle:
                                                      NeumorphicTextStyle(
                                                    fontFamily: "Cool",
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    fontSize: 12.sp,
                                                  ),
                                                )
                                              ],
                                            )),
                                      )
                                    ]),
                              )
                            ],
                          ),
                        ],
                      )),
                ))
          ],
        ),
      ),
      bottomNavigationBar: ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.r), topRight: Radius.circular(20.r)),
          child: BottomAppBar(
              color: btBar,
              shape: CircularNotchedRectangle(),
              notchMargin: 3.w,
              child: BottomNavigationBar(
                currentIndex: _pageIndex,
                type: BottomNavigationBarType.fixed,
                backgroundColor: Colors.transparent,
                elevation: 0,
                unselectedLabelStyle: TextStyle(
                  fontFamily: "Cool",
                  fontWeight: FontWeight.w600,
                  fontSize: 10.sp,
                ),
                selectedLabelStyle: TextStyle(
                  fontFamily: "Cool",
                  fontWeight: FontWeight.w600,
                  fontSize: 12.sp,
                ),
                selectedItemColor: softWhite,
                unselectedItemColor: softWhite.withOpacity(0.5),
                items: [
                  BottomNavigationBarItem(
                      icon: Icon(Icons.home_outlined,
                          size: 20.sp, color: softWhite.withOpacity(0.6)),
                      activeIcon: Icon(
                        Icons.home,
                        size: 20.sp,
                        color: softWhite.withOpacity(0.6),
                      ),
                      label: "Home"),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.account_balance_wallet_outlined,
                          size: 20.sp, color: softWhite.withOpacity(0.6)),
                      activeIcon: Icon(Icons.account_balance_wallet,
                          size: 20.sp, color: softWhite.withOpacity(0.6)),
                      label: "Wallet"),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.notifications_outlined,
                        size: 20.sp, color: softWhite.withOpacity(0.6)),
                    activeIcon: Icon(Icons.notifications,
                        size: 20.sp, color: softWhite.withOpacity(0.6)),
                    label: "Notifications",
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.settings_outlined,
                        size: 20.sp, color: softWhite.withOpacity(0.6)),
                    activeIcon: Icon(Icons.settings,
                        size: 20.sp, color: softWhite.withOpacity(0.6)),
                    label: "Settings",
                  ),
                ],
                onTap: (int index) {
                  setState(() {
                     _pageIndex = index;
                    switch (index) {
                      case 0:
                        Get.to(HomePage());
                        break;
                      case 1:
                        Get.to(WalletPage());
                        break;
                      case 2:
                        Get.to(Notifications());
                        break;
                      case 3:
                        Get.to(SettingsPage());
                        break;
                    }
                  });
                },
              ))),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        elevation: 0,
        splashColor: softWhite.withOpacity(0.4),
        onPressed: () {},
        child: Container(
          height: 60.h,
          width: 60.w,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    ltBlue,
                    softPurple,
                  ])),
          child: Icon(
            Icons.qr_code_scanner_outlined,
            color: softWhite,
            size: 30.sp,
          ),
        ),
      ),
    );
  }
}
