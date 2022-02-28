import 'package:coba_finance_app/views/loginScreen.dart';
import 'package:flutter/material.dart';
import 'package:coba_finance_app/colors/color.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StarterPage extends StatefulWidget {
  const StarterPage({Key? key}) : super(key: key);

  @override
  _StarterPageState createState() => _StarterPageState();
}

class _StarterPageState extends State<StarterPage> {
  CarouselController iniController = CarouselController();

  @override
  Widget build(BuildContext context) {
    //sizing
    var layout = MediaQuery.of(context);

    return Scaffold(
      body: Container(
        width: layout.size.width,
        height: layout.size.height,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              ltBlue,
              blPurple,
              softPurple,
            ])),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CarouselSlider(
                carouselController: iniController,
                options: CarouselOptions(
                  enlargeCenterPage: false,
                  autoPlay: false,
                  viewportFraction: 1,
                  height: 750.h,
                  enableInfiniteScroll: false,
                ),
                items: [
                  Padding(
                      padding: EdgeInsets.all(18.0),
                      child: Stack(
                        children: <Widget>[
                          Container(
                            child: Stack(children: [
                              Column(
                                children: [
                                  Align(
                                    alignment: Alignment.topCenter,
                                    child: Image(
                                      image: AssetImage(
                                          "assets/images/exchange.png"),
                                      width: 300.w,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 32.h,
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        NeumorphicText(
                                          "Mezz Finance App",
                                          style: NeumorphicStyle(
                                            depth: 0,
                                            color: Colors.white,
                                          ),
                                          textStyle: NeumorphicTextStyle(
                                            fontSize: 24.sp,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: "Cool",
                                          ),
                                        ),
                                        SizedBox(
                                          height: 16.h,
                                        ),
                                        NeumorphicText(
                                            "Memudahkan dalam proses transaksi pertukaran kurs mata uang"
                                            " untuk segala transaksi hingga mengelola tabungan anda dengan sekali tap",
                                            style: NeumorphicStyle(
                                              depth: 0,
                                              color:
                                                  Colors.white.withOpacity(0.8),
                                            ),
                                            textStyle: NeumorphicTextStyle(
                                              fontSize: 14.sp,
                                              height: 1.3,
                                              fontWeight: FontWeight.w500,
                                              fontFamily: "Cool",
                                            )),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  right: 14.w,
                                ),
                                child: Align(
                                    alignment: Alignment.bottomRight,
                                    child: NeumorphicButton(
                                      onPressed: () {
                                        iniController.nextPage(
                                          duration: Duration(milliseconds: 400),
                                          curve: Curves.easeIn,
                                        );
                                      },
                                      padding: EdgeInsets.symmetric(
                                        vertical: 12.h,
                                        horizontal: 12.w,
                                      ),
                                      style: NeumorphicStyle(
                                        depth: 1,
                                        intensity: 1,
                                        lightSource: LightSource.left,
                                      ),
                                      child: Icon(
                                        Icons.arrow_forward_ios,
                                        size: 14.0,
                                      ),
                                    )),
                              )
                            ]),
                          ),
                        ],
                      )),
                  Padding(
                      padding: EdgeInsets.all(18.0),
                      child: Stack(children: <Widget>[
                        Container(
                          child: Stack(
                            children: [
                              Column(
                                children: [
                                  Align(
                                    alignment: Alignment.topCenter,
                                    child: Image(
                                      image: AssetImage(
                                          "assets/images/benefit.png"),
                                      width: 300.w,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 32.h,
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        NeumorphicText(
                                          "Mezz Finance App",
                                          style: NeumorphicStyle(
                                            depth: 0,
                                            color: Colors.white,
                                          ),
                                          textStyle: NeumorphicTextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontFamily: "Cool",
                                              fontSize: 24.sp),
                                        ),
                                        SizedBox(
                                          height: 16.h,
                                        ),
                                        NeumorphicText(
                                          "Mari bergabung sekarang, dan dapatkan benefitnya!"
                                          " kenyamanan menyimpan history tabungan anda dalam satu aplikasi",
                                          style: NeumorphicStyle(
                                            depth: 0,
                                            color:
                                                Colors.white.withOpacity(0.8),
                                          ),
                                          textStyle: NeumorphicTextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontFamily: "Cool",
                                            fontSize: 14.sp,
                                            height: 1.3,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  right: 14.w,
                                  left: 14.w,
                                ),
                                child: Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          NeumorphicButton(
                                            onPressed: () {
                                              iniController.previousPage(
                                                duration:
                                                    Duration(milliseconds: 400),
                                                curve: Curves.easeIn,
                                              );
                                            },
                                            padding: EdgeInsets.symmetric(
                                                vertical: 12.h,
                                                horizontal: 12.w),
                                            child: Icon(
                                              Icons.arrow_back_ios,
                                              size: 14,
                                            ),
                                            style: NeumorphicStyle(
                                              depth: 1,
                                              intensity: 1,
                                              lightSource: LightSource.right,
                                            ),
                                          ),
                                          NeumorphicButton(
                                              onPressed: () {
                                                Navigator.pushNamed(
                                                    context, "/login");
                                              },
                                              style: NeumorphicStyle(
                                                depth: 1,
                                                intensity: 1,
                                                lightSource: LightSource.left,
                                              ),
                                              padding: EdgeInsets.symmetric(
                                                vertical: 14.h,
                                                horizontal: 26.w,
                                              ),
                                              child: Text("Get Started",
                                                  style: TextStyle(
                                                    fontFamily: "Cool",
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 14.sp,
                                                    color: softPurple,
                                                  )))
                                        ])),
                              )
                            ],
                          ),
                        )
                      ]))
                ]),
          ],
        ),
      ),
    );
  }
}
