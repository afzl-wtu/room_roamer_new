import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:room_roamer_new/Screens/Login_Screen.dart';
import 'package:room_roamer_new/Screens/Login_Screen2.dart';
import 'package:room_roamer_new/utils/AppColors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LoginScreen()));
              },
              child: Container(
                height: 119.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.r),
                    gradient: AppColors.linearGradient),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 15.w,
                    ),
                    SizedBox(
                        height: 100.h,
                        width: 75.w,
                        child: Image.asset(
                          "Assets/images/Character.png",
                          fit: BoxFit.cover,
                        )),
                    SizedBox(
                      width: 50.w,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Hostel Seeker",
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
                              color: AppColors.white_color,
                              fontFamily: "Urbanist",
                            )),
                        SizedBox(
                          height: 5.h,
                        ),
                        Text("Tap to Continue as a Seeker.",
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                              color: AppColors.white_color,
                              fontFamily: "Urbanist",
                            )),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 40.h,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LoginScreen2()));
              },
              child: Container(
                height: 119.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.r),
                    gradient: AppColors.linearGradient2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                        height: 100.h,
                        child: Image.asset("Assets/images/pana.png")),
                    SizedBox(
                      width: 30.w,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text("Hostel Owner",
                              style: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600,
                                color: AppColors.white_color,
                                fontFamily: "Urbanist",
                              )),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Text("Continue as Owner..",
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                              color: AppColors.white_color,
                              fontFamily: "Urbanist",
                            )),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
