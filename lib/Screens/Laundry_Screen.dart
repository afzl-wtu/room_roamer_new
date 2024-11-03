import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:room_roamer_new/Widgets/Custom_elevated_button.dart';
import 'package:room_roamer_new/utils/AppColors.dart';
import 'package:room_roamer_new/utils/extensions.dart';

class LaundryScreen extends StatefulWidget {
  const LaundryScreen({super.key});

  @override
  State<LaundryScreen> createState() => _LaundryScreenState();
}

class _LaundryScreenState extends State<LaundryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.only(
            right: 50.w,
          ),
          child: Center(
            child: Text(
              "Laundry ",
              style: TextStyle(
                fontSize: 24.sp,
                fontFamily: "Urbanist",
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
      ),
      body: Padding(
        padding:
            EdgeInsets.only(left: 15.w, right: 15.w, top: 20.h, bottom: 20.h),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                " Laundry Area",
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w700,
                  fontFamily: "Urbanist",
                  color: AppColors.black,
                ),
              ),
            ),
            20.ht,
            ClipRRect(
              borderRadius: BorderRadius.circular(10.r),
              child: Image.asset(
                "Assets/images/wash111.jpg",
              ),
            ),
            30.ht,
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                "  View Laundry Area",
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w700,
                  fontFamily: "Urbanist",
                  color: AppColors.black,
                ),
              ),
            ),
            20.ht,
            ClipRRect(
              borderRadius: BorderRadius.circular(10.r),
              child: Image.asset(
                "Assets/images/wash2.jpg",
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
