import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:room_roamer_new/Screens/Delete_hostel.dart';
import 'package:room_roamer_new/Screens/Home_Screen.dart';
import 'package:room_roamer_new/Screens/Create_Hostel_Profile.dart';
import 'package:room_roamer_new/Screens/Login_Screen2.dart';
import 'package:room_roamer_new/Screens/Owner_Profile.dart';
import 'package:room_roamer_new/Screens/Update_hostel.dart';
import 'package:room_roamer_new/Screens/View_Hostel_Screen.dart';
import 'package:room_roamer_new/Widgets/Custom_elevated_button.dart';
import 'package:room_roamer_new/utils/AppColors.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: AppColors.white_color,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const HomeScreen()),
            ); // Navigate back to the previous screen
          },
        ),
        title: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "Hostel Owner",
                style: TextStyle(
                  color: AppColors.black,
                  fontFamily: "Urbanist",
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(width: 85.w),
              SizedBox(
                height: 50.h,
                width: 35.w,
                child: Align(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const OwnerProfile()),
                      );
                    },
                    child: Image.asset("Assets/images/Profile.png"),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                "Dashboard",
                style: TextStyle(
                    fontSize: 19.sp,
                    fontWeight: FontWeight.w400,
                    color: AppColors.black2,
                    fontFamily: "Urbanist"),
              ),
            ),
            SizedBox(
              height: 70.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HostelProfileScreen()));
                  },
                  child: Container(
                    height: 100.h,
                    width: 180.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.r),
                      gradient: AppColors.linearGradient,
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Create Hostel Profile",
                        style: TextStyle(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w600,
                            color: AppColors.grey12,
                            fontFamily: "Urbanist"),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ViewHostelScreen())),
                  child: Container(
                    height: 100.h,
                    width: 180.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.r),
                      gradient: AppColors.linearGradient,
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "View Hostel Profile",
                        style: TextStyle(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w600,
                            color: AppColors.grey12,
                            fontFamily: "Urbanist"),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const UpdateHostelScreen()));
                  },
                  child: Container(
                    height: 100.h,
                    width: 180.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.r),
                      gradient: AppColors.linearGradient,
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Update Hostel Profile",
                        style: TextStyle(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w600,
                            color: AppColors.grey12,
                            fontFamily: "Urbanist"),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const DeleteHostelScreen()));
                  },
                  child: Container(
                    height: 100.h,
                    width: 180.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.r),
                      gradient: AppColors.linearGradient,
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        " Delete Hostel Profile",
                        style: TextStyle(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w600,
                            color: AppColors.grey12,
                            fontFamily: "Urbanist"),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const Spacer(),
            CustomElevatedButton(
                text: "Log out",
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginScreen2()));
                },
                width: 400.w)
          ],
        ),
      ),
    );
  }
}
