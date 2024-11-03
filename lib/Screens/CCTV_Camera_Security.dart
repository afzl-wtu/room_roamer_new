import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:room_roamer_new/Widgets/Custom_elevated_button.dart';
import 'package:room_roamer_new/utils/AppColors.dart';
import 'package:room_roamer_new/utils/extensions.dart';

class CCTVSecurityScreen extends StatefulWidget {
  const CCTVSecurityScreen({super.key});

  @override
  State<CCTVSecurityScreen> createState() => _CCTVSecurityScreenState();
}

class _CCTVSecurityScreenState extends State<CCTVSecurityScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.only(left: 15.w),
          child: Text(
            "CCTV Camera Security",
            style: TextStyle(
              fontSize: 24.sp,
              fontFamily: "Urbanist",
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
      body: Padding(
        padding:
            EdgeInsets.only(left: 14.w, right: 14.w, top: 25.h, bottom: 25.h),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "  Parking Area",
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                  fontFamily: "Urbanist",
                  color: AppColors.black,
                ),
              ),
            ),
            12.ht,
            Container(
              height: 250.h,
              width: 400.w,
              decoration: const BoxDecoration(),
              child: Image.asset(
                "Assets/images/checking.png",
                height: 256.h,
                width: 378.w,
              ),
            ),
            20.ht,
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "  View",
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                  fontFamily: "Urbanist",
                  color: AppColors.black,
                ),
              ),
            ),
            12.ht,
            Container(
              height: 250.h,
              width: 400.w,
              decoration: const BoxDecoration(),
              child: Image.asset(
                "Assets/images/view.png",
                height: 256.h,
                width: 378.w,
              ),
            ),
            const Spacer(),
            CustomElevatedButton(
                text: "Continue",
                onPressed: () {
                  Navigator.pop(context);
                },
                width: 400.w)
          ],
        ),
      ),
    );
  }
}
