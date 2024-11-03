import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:room_roamer_new/Widgets/Custom_elevated_button.dart';
import 'package:room_roamer_new/utils/AppColors.dart';
import 'package:room_roamer_new/utils/extensions.dart';

class ParkingAreaScreen extends StatefulWidget {
  const ParkingAreaScreen({super.key});

  @override
  State<ParkingAreaScreen> createState() => _ParkingAreaScreenState();
}

class _ParkingAreaScreenState extends State<ParkingAreaScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.only(left: 62.w),
          child: Text(
            "Parking Area",
            style: TextStyle(
              color: AppColors.black,
              fontSize: 24.sp,
              fontWeight: FontWeight.w700,
              fontFamily: "Urbanist",
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                " Parking Area",
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w700,
                  fontFamily: "Urbanist",
                  color: AppColors.black,
                ),
              ),
            ),
            10.ht,
            Image.asset(
              "Assets/images/checking.png",
              height: 256.h,
              width: 378.w,
            ),
            20.ht,
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                " View of Parking side ",
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w700,
                  fontFamily: "Urbanist",
                  color: AppColors.black,
                ),
              ),
            ),
            10.ht,
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
