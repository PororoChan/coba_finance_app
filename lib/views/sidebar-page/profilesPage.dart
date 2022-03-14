import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:coba_finance_app/colors/color.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    var layout = MediaQuery.of(context).size;
    return SafeArea(
      bottom: false,
      left: false,
      right: false,
      child: Scaffold(
        body: Column(
          children: <Widget>[
            Container(
              height: 185.h,
              width: layout.width,
              decoration: BoxDecoration(
                  color: blPurple,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(32.0),
                      bottomRight: Radius.circular(32.0))),
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        NeumorphicButton(
                          onPressed: () {
                            Get.back();
                          },
                          style: NeumorphicStyle(
                              depth: 1,
                              intensity: 1,
                              lightSource: LightSource.bottomLeft,
                              color: softWhite),
                          padding: EdgeInsets.symmetric(
                            vertical: 5.h,
                            horizontal: 5.w,
                          ),
                          child: Icon(
                            Icons.arrow_back_ios,
                            size: 14.sp,
                            color: blPurple,
                          ),
                        ),
                        Text(
                          "Profiles",
                          style: TextStyle(
                              fontFamily: "Cool",
                              fontWeight: FontWeight.w800,
                              fontSize: 18.0,
                              color: softWhite),
                        ),
                        SizedBox(
                          width: 18.w,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 90.h,
                      child: Card(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ListTile(
                                leading: CircleAvatar(
                                  radius: 20.w,
                                  child: Image(
                                    image: AssetImage("assets/images/woman.png"),
                                    width: 90,
                                    height: 90,  
                                    fit: BoxFit.cover,                                    
                                  ),
                                ),
                                title: Text(
                                  "Selena Gomez",
                                  style: TextStyle(
                                    fontFamily: "Cool",
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.sp,
                                    color: softDark,
                                  ),
                                ),
                                subtitle: Text(
                                  "+1771872871882",
                                  style: TextStyle(
                                    fontFamily: "Cool",
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14.sp,
                                    color: softDark.withOpacity(0.6)
                                  ),
                                ),
                                trailing: Container(
                                  height: 45.h,
                                  width: 45.w,
                                  decoration: BoxDecoration(
                                    color: softGrey.withOpacity(0.1),
                                    shape: BoxShape.circle
                                  ),
                                  child: Icon(
                                    Icons.edit_outlined,
                                    size: 20.sp,
                                    color: softGrey.withOpacity(0.5),
                                  ),
                                ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 18.h,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _profilesItems(
                  title: "Personal Information", 
                  sub: "Last update 02/03/2022", 
                  ikon: Icons.arrow_forward_ios, 
                  onTap: (){},
                ),
                _profilesItems(
                  title: "Address", 
                  sub: "Last update 02/03/2022", 
                  ikon: Icons.arrow_forward_ios, 
                  onTap: (){},
                ),
                _profilesItems(
                  title: "Bank Account", 
                  sub: "Last update 02/03/2022", 
                  ikon: Icons.arrow_forward_ios, 
                  onTap: (){},
                ),
                _profilesItems(
                  title: "Language", 
                  sub: "Last update 02/03/2022", 
                  ikon: Icons.arrow_forward_ios, 
                  onTap: (){},
                ),
                _profilesItems(
                  title: "UPI ID", 
                  sub: "Last update 02/03/2022", 
                  ikon: Icons.arrow_forward_ios, 
                  onTap: (){},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _profilesItems({
    required String title, 
    required String sub, 
    required IconData ikon, 
    required GestureTapCallback onTap
    }) {
    return Padding(
      padding: EdgeInsets.only(
        right: 18.w,
        left: 18.w,
        bottom: 18.h
      ),
      child: Card(
        color: whitePlus,
        elevation: 1,
        child: ListTile(
          title: Text(title),
          subtitle: Text(sub),
          trailing: Icon(
            ikon,
            size: 18.sp,
            color: softDark,
          ),
          onTap: onTap,
        ),
      ),
    );
  }
}
