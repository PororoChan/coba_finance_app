import 'package:coba_finance_app/views/widgets/startPagebg.dart';
import 'package:flutter/material.dart';
import 'package:coba_finance_app/colors/color.dart';
import 'package:flutter/services.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  GlobalKey<FormState> _form = GlobalKey();
  StartBg _bg = StartBg();
  bool _pasVis = true;

  //text controller
  TextEditingController _nama = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _pass = TextEditingController();
  TextEditingController _passConfirm = TextEditingController();

  //gender_value
  String gender = "";
  int _val = 0;

  @override
  Widget build(BuildContext context) {
    var layout = MediaQuery.of(context);

    return SafeArea(
      bottom: false,
      left: false,
      right: false,
      child: Scaffold(
          body: Stack(
        children: <Widget>[
          _bg,
          SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Container(
              padding: EdgeInsets.all(18.0),
              margin: EdgeInsets.only(
                top: 75.h,
                right: 18.w,
                left: 18.w,
              ),
              height: layout.size.height,
              width: layout.size.width,
              child: Column(children: <Widget>[
                NeumorphicText(
                  "mEzz",
                  style: NeumorphicStyle(
                    depth: 1.5,
                    intensity: 1,
                    lightSource: LightSource.left,
                    color: blurWhite,
                    shadowDarkColor: softDark.withOpacity(0.8),
                  ),
                  textStyle: NeumorphicTextStyle(
                      fontFamily: "Cool",
                      fontWeight: FontWeight.bold,
                      fontSize: 32.sp),
                ),
                SizedBox(height: 16.h),
                NeumorphicText(
                  "Create your Account",
                  style: NeumorphicStyle(
                    depth: 1.5,
                    intensity: 1,
                    lightSource: LightSource.left,
                    color: blurWhite,
                    shadowDarkColor: softDark.withOpacity(0.8),
                  ),
                  textStyle: NeumorphicTextStyle(
                      fontFamily: "Cool",
                      fontWeight: FontWeight.bold,
                      fontSize: 16.sp),
                ),
                SizedBox(
                  height: 42.h,
                ),
                Form(
                  key: _form,
                  child: Column(children: <Widget>[
                    Container(
                        padding: EdgeInsets.only(
                          left: 10.w,
                        ),
                        alignment: Alignment.topLeft,
                        child: NeumorphicText("Name",
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
                            ))),
                    SizedBox(
                      height: 10.h,
                    ),
                    TextFormField(
                        controller: _nama,
                        cursorColor: softPurple,
                        autocorrect: false,
                        autofocus: false,
                        style: TextStyle(
                          fontFamily: "Cool",
                          fontWeight: FontWeight.normal,
                          fontSize: 14.sp,
                          color: softDark,
                        ),
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: blurWhite,
                            prefixIcon: Icon(
                              Icons.person,
                              color: softDark.withOpacity(0.6),
                            ),
                            hintText: "Enter Your Name",
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
                            ))),
                    SizedBox(
                      height: 12.h,
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      padding: EdgeInsets.only(
                        left: 10.w,
                      ),
                      child: NeumorphicText(
                        "Gender",
                        style: NeumorphicStyle(
                          depth: 2,
                          lightSource: LightSource.left,
                          shadowDarkColor: softWhite,
                          color: softDark.withOpacity(0.5),
                        ),
                        textStyle: NeumorphicTextStyle(
                          fontFamily: "Cool",
                          fontWeight: FontWeight.w600,
                          fontSize: 12.sp,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          NeumorphicRadio<int>(
                              value: 1,
                              groupValue: _val,
                              onChanged: (value) {
                                setState(() {
                                  if (_val == 0) {
                                    _val = 1;
                                  } else if (_val == 1) {
                                    _val = 0;
                                  }
                                  gender = "Male";
                                });
                              },
                              padding: EdgeInsets.all(5.0),
                              child: Icon(
                                Icons.check,
                                size: 8.0,
                                color: softWhite,
                              ),
                              style: NeumorphicRadioStyle(
                                  selectedColor: blPurple.withOpacity(0.8),
                                  border: NeumorphicBorder(
                                    color: softDark.withOpacity(0.3),
                                    width: 0.5.w,
                                  ))),
                          SizedBox(width: 10.w),
                          NeumorphicText("Male",
                              textStyle: NeumorphicTextStyle(
                                  fontFamily: "Cool",
                                  fontWeight: FontWeight.normal,
                                  fontSize: 12.sp),
                              style: NeumorphicStyle(
                                depth: 1,
                                intensity: 1,
                                lightSource: LightSource.left,
                                color: softDark.withOpacity(0.7),
                                shadowDarkColor: softWhite,
                              )),
                          SizedBox(
                            width: 24.w,
                          ),
                          NeumorphicRadio<int>(
                              value: 2,
                              groupValue: _val,
                              onChanged: (value) {
                                setState(() {
                                  if (_val == 0) {
                                    _val = 2;
                                  } else if (_val == 2) {
                                    _val = 0;
                                  }
                                  gender = "Female";
                                });
                              },
                              padding: EdgeInsets.all(5.0),
                              child: Icon(
                                Icons.check,
                                size: 8.0,
                                color: softWhite,
                              ),
                              style: NeumorphicRadioStyle(
                                  selectedColor: blPurple.withOpacity(0.8),
                                  border: NeumorphicBorder(
                                    color: softDark.withOpacity(0.3),
                                    width: 0.5.w,
                                  ))),
                          SizedBox(
                            width: 10.0,
                          ),
                          NeumorphicText("Female",
                              textStyle: NeumorphicTextStyle(
                                  fontFamily: "Cool",
                                  fontWeight: FontWeight.normal,
                                  fontSize: 12.sp),
                              style: NeumorphicStyle(
                                depth: 1,
                                intensity: 1,
                                lightSource: LightSource.left,
                                color: softDark.withOpacity(0.7),
                                shadowDarkColor: softWhite,
                              )),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Container(
                        padding: EdgeInsets.only(left: 10.w),
                        alignment: Alignment.topLeft,
                        child: NeumorphicText(
                          "Email",
                          style: NeumorphicStyle(
                            depth: 2,
                            shadowDarkColor: softWhite,
                            color: softDark.withOpacity(0.5),
                            lightSource: LightSource.left,
                          ),
                          textStyle: NeumorphicTextStyle(
                            fontFamily: "Cool",
                            fontWeight: FontWeight.w600,
                            fontSize: 12.sp,
                          ),
                        )),
                    SizedBox(
                      height: 10.h,
                    ),
                    TextFormField(
                        controller: _email,
                        keyboardType: TextInputType.emailAddress,
                        inputFormatters: [
                          FilteringTextInputFormatter.deny(
                            RegExp('[,!?;:/]'),
                          )
                        ],
                        autocorrect: false,
                        autofocus: false,
                        cursorColor: softPurple,
                        style: TextStyle(
                          fontFamily: "Cool",
                          fontWeight: FontWeight.normal,
                          fontSize: 14.sp,
                          color: softDark,
                        ),
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: blurWhite,
                            hintText: "Enter Your Email",
                            hintStyle: TextStyle(
                              fontFamily: "Cool",
                              fontWeight: FontWeight.w500,
                              fontSize: 14.sp,
                            ),
                            prefixIcon: Icon(
                              Icons.email,
                              color: softDark.withOpacity(0.6),
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(14.r),
                                borderSide: BorderSide(
                                  color: softDark,
                                  width: 0.5.w,
                                )),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(14.r),
                                borderSide: BorderSide(
                                  color: softDark,
                                  width: 0.5.w,
                                )))),
                    SizedBox(
                      height: 12.h,
                    ),
                    Container(
                        alignment: Alignment.topLeft,
                        padding: EdgeInsets.only(
                          left: 10.w,
                        ),
                        child: NeumorphicText(
                          "Password",
                          style: NeumorphicStyle(
                            depth: 2,
                            lightSource: LightSource.left,
                            color: softDark.withOpacity(0.5),
                            shadowDarkColor: softWhite,
                          ),
                          textStyle: NeumorphicTextStyle(
                            fontFamily: "Cool",
                            fontWeight: FontWeight.w600,
                            fontSize: 12.sp,
                          ),
                        )),
                    SizedBox(
                      height: 10.h,
                    ),
                    TextFormField(
                        controller: _pass,
                        autocorrect: false,
                        autofocus: false,
                        obscureText: _pasVis,
                        cursorColor: softPurple,
                        style: TextStyle(
                          fontFamily: "Cool",
                          fontWeight: FontWeight.normal,
                          fontSize: 14.sp,
                          color: softDark,
                        ),
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: blurWhite,
                            suffixIcon: InkWell(
                                onTap: () {
                                  setState(() {
                                    _pasVis = !_pasVis;
                                  });
                                },
                                child: Icon(
                                  _pasVis
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                  color: softDark.withOpacity(0.6),
                                )),
                            prefixIcon: Icon(
                              Icons.lock,
                              color: softDark.withOpacity(0.6),
                            ),
                            hintText: "Create Your Password",
                            hintStyle: TextStyle(
                              fontFamily: "Cool",
                              fontWeight: FontWeight.w500,
                              fontSize: 14.sp,
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(14.r),
                                borderSide: BorderSide(
                                  color: softDark,
                                  width: 0.5.w,
                                )),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(14.r),
                                borderSide: BorderSide(
                                  color: softDark,
                                  width: 0.5.w,
                                )))),
                    SizedBox(
                      height: 12.h,
                    ),
                    Container(
                        color: Colors.transparent,
                        alignment: Alignment.topLeft,
                        padding: EdgeInsets.only(
                          left: 10.w,
                        ),
                        child: NeumorphicText(
                          "Confirm Password",
                          style: NeumorphicStyle(
                            depth: 2,
                            lightSource: LightSource.left,
                            color: softDark.withOpacity(0.5),
                            shadowDarkColor: softWhite,
                          ),
                          textStyle: NeumorphicTextStyle(
                            fontFamily: "Cool",
                            fontWeight: FontWeight.w600,
                            fontSize: 12.sp,
                          ),
                        )),
                    SizedBox(
                      height: 10.h,
                    ),
                    TextFormField(
                        controller: _passConfirm,
                        autocorrect: false,
                        autofocus: false,
                        obscureText: _pasVis,
                        cursorColor: softPurple,
                        style: TextStyle(
                          fontFamily: "Cool",
                          fontWeight: FontWeight.normal,
                          fontSize: 14.sp,
                          color: softDark,
                        ),
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: blurWhite,
                            prefixIcon: Icon(
                              Icons.lock,
                              color: softDark.withOpacity(0.6),
                            ),
                            hintText: "Create Your Password",
                            hintStyle: TextStyle(
                              fontFamily: "Cool",
                              fontWeight: FontWeight.w500,
                              fontSize: 14.sp,
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(14.r),
                                borderSide: BorderSide(
                                  color: softDark,
                                  width: 0.5.w,
                                )),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(14.r),
                                borderSide: BorderSide(
                                  color: softDark,
                                  width: 0.5.w,
                                )))),
                    SizedBox(height: 42.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        NeumorphicButton(
                            onPressed: () {
                              setState(() {
                                _nama.clear();
                                _email.clear();
                                _pass.clear();
                                _passConfirm.clear();
                                _val = 0;
                              });
                            },
                            padding: EdgeInsets.symmetric(
                              vertical: 14.h,
                              horizontal: 32.w,
                            ),
                            style: NeumorphicStyle(
                              depth: 5,
                              intensity: 1,
                              lightSource: LightSource.topLeft,
                              color: softWhite,
                            ),
                            child: Text("Cancel",
                                style: TextStyle(
                                  fontFamily: "Cool",
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12.sp,
                                  color: softDark.withOpacity(0.8),
                                ))),
                        NeumorphicButton(
                            onPressed: () {},
                            padding: EdgeInsets.symmetric(
                              vertical: 14.h,
                              horizontal: 32.w,
                            ),
                            style: NeumorphicStyle(
                              depth: 5,
                              lightSource: LightSource.bottomRight,
                              color: blPurple,
                            ),
                            child: Text("Sign Up",
                                style: TextStyle(
                                  fontFamily: "Cool",
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12.sp,
                                  color: softWhite,
                                )))
                      ],
                    )
                  ]),
                ),
              ]),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              padding: EdgeInsets.all(18.0),
              child: Row(
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.arrow_back_ios),
                    color: softWhite,
                    iconSize: 15.sp,
                    onPressed: () {
                      Get.back();
                    },
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
        ],
      )),
    );
  }
}
