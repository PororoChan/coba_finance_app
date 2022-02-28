import 'dart:math';

import 'package:coba_finance_app/views/widgets/startPagebg.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:coba_finance_app/colors/color.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  //all object var
  Random random = Random();
  bool bol = false;
  bool pass = true;
  StartBg _bg = StartBg();

  //form-controller
  GlobalKey<FormState> _formKey = GlobalKey();
  TextEditingController _email = TextEditingController();
  TextEditingController _pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    //sizing
    var layout = MediaQuery.of(context);

    return SafeArea(
      bottom: false,
      right: false,
      left: false,
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Stack(
            children: <Widget>[
              _bg,
              Container(
                  padding: EdgeInsets.all(14.0),
                  margin: EdgeInsets.only(
                    top: 100.h,
                    right: 18.w,
                    left: 18.w,
                  ),
                  height: layout.size.height,
                  width: layout.size.width,
                  child: Column(
                    children: [
                      NeumorphicText(
                        "mEzz",
                        style: NeumorphicStyle(
                          shadowDarkColor: softDark.withOpacity(0.8),
                          depth: 1.5,
                          intensity: 1,
                          lightSource: LightSource.left,
                          color: blurWhite,
                        ),
                        textStyle: NeumorphicTextStyle(
                          fontFamily: "Cool",
                          fontWeight: FontWeight.bold,
                          fontSize: 32.sp,
                        ),
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      NeumorphicText(
                        "Sign In to your Account",
                        style: NeumorphicStyle(
                          lightSource: LightSource.left,
                          shadowDarkColor: softDark,
                          depth: 1,
                          intensity: 1,
                          color: softWhite,
                        ),
                        textStyle: NeumorphicTextStyle(
                          fontFamily: "Cool",
                          fontWeight: FontWeight.bold,
                          fontSize: 16.sp,
                        ),
                      ),
                      SizedBox(
                        height: 75.h,
                      ),
                      Form(
                          key: _formKey,
                          child: Column(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.only(
                                  left: 10.w,
                                ),
                                alignment: Alignment.topLeft,
                                child: NeumorphicText(
                                  "Email",
                                  style: NeumorphicStyle(
                                    depth: 2,
                                    color: softDark.withOpacity(0.5),
                                    lightSource: LightSource.left,
                                    shadowDarkColor: softWhite,
                                  ),
                                  textStyle: NeumorphicTextStyle(
                                    fontFamily: "Cool",
                                    fontWeight: FontWeight.w600,
                                    fontSize: 12.sp,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              TextFormField(
                                controller: _email,
                                keyboardType: TextInputType.emailAddress,
                                cursorColor: softPurple,
                                obscureText: false,
                                autocorrect: false,
                                autofocus: false,
                                style: TextStyle(
                                  fontFamily: "Cool",
                                  fontWeight: FontWeight.normal,
                                  fontSize: 14.sp,
                                  color: softDark.withOpacity(0.8),
                                ),
                                inputFormatters: [
                                  FilteringTextInputFormatter.deny(
                                      RegExp('[?!%&*#~,<>?/]'))
                                ],
                                decoration: InputDecoration(
                                  prefixIcon: Icon(
                                    Icons.email,
                                    color: softDark.withOpacity(0.6),
                                  ),
                                  hintText: "Enter your Email",
                                  hintStyle: TextStyle(
                                    fontFamily: "Cool",
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14.sp,
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(14.r),
                                      borderSide: BorderSide(
                                        color: softGrey,
                                        width: 0.5.w,
                                      )),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(14.r),
                                    borderSide: BorderSide(
                                      color: softGrey,
                                      width: 0.5.w,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 32.h),
                              Container(
                                padding: EdgeInsets.only(
                                  left: 10.w,
                                ),
                                alignment: Alignment.topLeft,
                                child: NeumorphicText(
                                  "Password",
                                  style: NeumorphicStyle(
                                    depth: 2,
                                    color: softDark.withOpacity(0.5),
                                    lightSource: LightSource.left,
                                    shadowDarkColor: softWhite,
                                  ),
                                  textStyle: NeumorphicTextStyle(
                                    fontFamily: "Cool",
                                    fontWeight: FontWeight.w600,
                                    fontSize: 12.sp,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              SizedBox(
                                height: 12.h,
                              ),
                              TextFormField(
                                controller: _pass,
                                inputFormatters: [
                                  FilteringTextInputFormatter.deny(
                                      RegExp('[,.!?;:/]')),
                                ],
                                cursorColor: softPurple,
                                obscureText: pass,
                                autocorrect: false,
                                autofocus: false,
                                style: TextStyle(
                                  fontFamily: "Cool",
                                  fontWeight: FontWeight.normal,
                                  fontSize: 14.sp,
                                  color: softDark.withOpacity(0.8),
                                ),
                                decoration: InputDecoration(
                                  suffixIcon: InkWell(
                                    onTap: _passwordVis,
                                    child: Icon(
                                      pass
                                          ? Icons.visibility
                                          : Icons.visibility_off,
                                      color: softDark.withOpacity(0.6),
                                    ),
                                  ),
                                  prefixIcon: Icon(
                                    Icons.lock,
                                    color: softDark.withOpacity(0.6),
                                  ),
                                  hintText: "Enter your Password",
                                  hintStyle: TextStyle(
                                      fontFamily: "Cool",
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14.sp),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(14.r),
                                    borderSide: BorderSide(
                                      color: softGrey,
                                      width: 0.5.w,
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(14.r),
                                      borderSide: BorderSide(
                                        color: softGrey,
                                        width: 0.5.w,
                                      )),
                                ),
                              ),
                              SizedBox(
                                height: 20.h,
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 8.w,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    NeumorphicCheckbox(
                                      value: bol,
                                      padding: EdgeInsets.symmetric(
                                        vertical: 1.h,
                                        horizontal: 1.w,
                                      ),
                                      style: NeumorphicCheckboxStyle(
                                        unselectedDepth: 5,
                                        selectedDepth: 5,
                                        selectedColor: ltBlue,
                                        border: NeumorphicBorder(),
                                      ),
                                      onChanged: (value) {
                                        setState(() {
                                          if (bol == false) {
                                            bol = true;
                                          } else if (bol == true) {
                                            bol = false;
                                          }
                                        });
                                      },
                                    ),
                                    SizedBox(width: 10.w),
                                    NeumorphicText("Remember Me",
                                        style: NeumorphicStyle(
                                          depth: 2,
                                          color: softDark.withOpacity(0.8),
                                        ),
                                        textStyle: NeumorphicTextStyle(
                                          fontFamily: "Cool",
                                          fontWeight: FontWeight.w500,
                                          fontSize: 11.sp,
                                        ))
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 32.h,
                              ),
                              Container(
                                padding: EdgeInsets.only(
                                  left: 2.w,
                                  right: 2.w,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    NeumorphicButton(
                                      onPressed: () {
                                        _email.clear();
                                        _pass.clear();
                                      },
                                      padding: EdgeInsets.symmetric(
                                        vertical: 14.h,
                                        horizontal: 42.w,
                                      ),
                                      style: NeumorphicStyle(
                                        depth: 5,
                                        intensity: 5,
                                        lightSource: LightSource.topLeft,
                                      ),
                                      child: Text(
                                        "Cancel",
                                        style: TextStyle(
                                          fontFamily: "Cool",
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12.sp,
                                          color: softDark.withOpacity(0.8),
                                        ),
                                      ),
                                    ),
                                    NeumorphicButton(
                                      onPressed: () {
                                        setState(() {
                                          Navigator.pushNamed(context, "/home");
                                        });
                                      },
                                      padding: EdgeInsets.symmetric(
                                        vertical: 14.h,
                                        horizontal: 42.w,
                                      ),
                                      style: NeumorphicStyle(
                                        depth: 5,
                                        intensity: 5,
                                        lightSource: LightSource.topLeft,
                                        color: blPurple,
                                      ),
                                      child: Text("Sign In",
                                          style: TextStyle(
                                              fontFamily: "Cool",
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12.sp,
                                              color: softWhite)),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ))
                    ],
                  )),
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  padding: EdgeInsets.all(18.0),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.arrow_back_ios,
                          size: 15.sp,
                          color: softWhite,
                        ),
                      ),
                      NeumorphicText(
                        "Back",
                        style: NeumorphicStyle(depth: 0, color: softWhite),
                        textStyle: NeumorphicTextStyle(
                          fontFamily: "Cool",
                          fontWeight: FontWeight.bold,
                          fontSize: 14.sp,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                      height: layout.size.height / 12,
                      width: layout.size.width / 1.6,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Don't have an account?",
                                style: TextStyle(
                                    fontFamily: "Cool",
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.sp,
                                    color: softDark.withOpacity(0.8))),
                            SizedBox(
                              width: 6.w,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(context, "/regist");
                              },
                              child: Text("Sign Up",
                                  style: TextStyle(
                                    fontFamily: "Cool",
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.sp,
                                    color: blPurple,
                                    decoration: TextDecoration.underline,
                                  )),
                            )
                          ]))),
            ],
          )),
    );
  }

  void _passwordVis() {
    setState(() {
      pass = !pass;
    });
  }
}
