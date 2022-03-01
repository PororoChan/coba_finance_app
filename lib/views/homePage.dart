import 'package:coba_finance_app/views/notifPage.dart';
import 'package:coba_finance_app/views/settingsPage.dart';
import 'package:coba_finance_app/views/walletPage.dart';
import 'package:coba_finance_app/views/widgets/sidebarScreen.dart';
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

var indexPage = 0;

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var layout = MediaQuery.of(context);
    final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();

    return Scaffold(
      key: _key,
      drawer: SideBar(),
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
                                _key.currentState!.openDrawer();
                              },
                              icon: Icon(
                                Icons.menu,
                                size: 30.sp,
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
              left: 35.w,
              right: 35.w,
              child: Align(
                alignment: Alignment.topCenter,
                child: Container(
                    height: 180.h,
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
                top: 390.h,
                left: 28.w,
                right: 28.w,
                bottom: 0.h,
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Container(
                      height: 500.h,
                      width: layout.size.width,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
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
                          Padding(
                            padding: EdgeInsets.only(
                              left: 15.w,
                              right: 15.w,
                            ),
                            child: Container(
                              height: 150.h,
                              width: layout.size.width,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                    colors: [
                                      blPurple,
                                      softPurple,
                                    ]),
                                borderRadius: BorderRadius.circular(18.r),
                              ),
                              child: Stack(children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.all(20.0),
                                  child: Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        "Penawaran Spesial!",
                                        style: TextStyle(
                                            color: softWhite,
                                            fontFamily: "Cool",
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16.sp),
                                      )),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 18.w,
                                  ),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "Selesaikan transaksi pertama \ndengan diskon 60%",
                                      style: TextStyle(
                                        fontFamily: "Cool",
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14.sp,
                                        color: softWhite.withOpacity(0.7),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(20.0),
                                  child: Align(
                                    alignment: Alignment.centerRight,
                                    child: Image(
                                      image: AssetImage(
                                        "assets/images/gift-box.png",
                                      ),
                                      width: 70.w,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: 10.0, bottom: 18.0, top: 10.0),
                                  child: Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: 50.w,
                                          height: 25.h,
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: blurWhite,
                                              boxShadow: [
                                                BoxShadow(
                                                  color: softWhite
                                                      .withOpacity(0.6),
                                                  blurRadius: 5,
                                                  spreadRadius: 2,
                                                  offset: Offset(1.0, 0.0),
                                                )
                                              ]),
                                          child: IconButton(
                                            onPressed: () {},
                                            icon: Icon(
                                              Icons.arrow_forward_ios,
                                              color: blPurple,
                                              size: 10.0,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ]),
                            ),
                          )
                        ],
                      )),
                )),
            Positioned(
              top: 370.h,
              left: 28.w,
              right: 28.w,
              child: Row(
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
            ),
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
                onTap: _tap,
                currentIndex: indexPage,
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
              ))),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        elevation: 1,
        splashColor: softDark.withOpacity(0.5),
        onPressed: () {},
        child: Container(
          height: 60.h,
          width: 60.w,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: softDark.withOpacity(0.3),
                  spreadRadius: 1,
                  blurRadius: 0,
                  offset: Offset(1, 0.0),
                )
              ],
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    softWhite,
                    blurWhite,
                  ])),
          child: Icon(
            Icons.qr_code_scanner_outlined,
            color: softDark.withOpacity(0.8),
            size: 30.sp,
          ),
        ),
      ),
    );
  }

  void _tap(int index) {
    setState(() {
      indexPage = index;
    });
  }
}
