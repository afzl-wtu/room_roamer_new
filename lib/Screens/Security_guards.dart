import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:room_roamer_new/Widgets/Custom_elevated_button.dart';
import 'package:room_roamer_new/utils/AppColors.dart';
import 'package:room_roamer_new/utils/extensions.dart';

class SecurityGuardScreen extends StatefulWidget {
  const SecurityGuardScreen({super.key});

  @override
  State<SecurityGuardScreen> createState() => _SecurityGuardScreenState();
}

class _SecurityGuardScreenState extends State<SecurityGuardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // backgroundColor: AppColors.white_color,
          title: Padding(
            padding: EdgeInsets.only(left: 45.w),
            child: Text(
              "Security Guard",
              style: TextStyle(
                color: AppColors.black,
                fontSize: 24.sp,
                fontWeight: FontWeight.w700,
                fontFamily: "Urbanist",
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: 12.w, right: 12.w, top: 20.h),
            child: Column(
              children: [
                Center(
                    child: Image.asset(
                  "Assets/images/profile12.png",
                  height: 200.h,
                  width: 200.w,
                )),
                25.ht,
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    " Employee ID",
                    style: TextStyle(
                      fontFamily: "Urbanist",
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColors.black1.withOpacity(0.38),
                    ),
                  ),
                ),
                10.ht,
                TextField(
                  cursorColor: AppColors.black,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: AppColors.grey12,
                    contentPadding: EdgeInsets.only(left: 15.w),
                    hintText: "A783",
                    hintStyle: TextStyle(
                      color: AppColors.black1.withOpacity(0.38),
                      fontFamily: "Inter",
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w400,
                    ),
                    border: const OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.zero,
                    ),
                  ),
                ),
                25.ht,
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    " Email",
                    style: TextStyle(
                      fontFamily: "Urbanist",
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColors.black1.withOpacity(0.38),
                    ),
                  ),
                ),
                10.ht,
                TextField(
                  cursorColor: AppColors.black,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: AppColors.grey12,
                    contentPadding: EdgeInsets.only(left: 15.w),
                    hintText: "ABC@gmail.com",
                    hintStyle: TextStyle(
                      color: AppColors.black1.withOpacity(0.38),
                      fontFamily: "Inter",
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w400,
                    ),
                    border: const OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.zero,
                    ),
                  ),
                ),
                25.ht,
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    " Phone",
                    style: TextStyle(
                      fontFamily: "Urbanist",
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColors.black1.withOpacity(0.38),
                    ),
                  ),
                ),
                10.ht,
                TextField(
                  cursorColor: AppColors.black,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: AppColors.grey12,
                    contentPadding: EdgeInsets.only(left: 15.w),
                    hintText: "+92345667785",
                    hintStyle: TextStyle(
                      color: AppColors.black1.withOpacity(0.38),
                      fontFamily: "Inter",
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w400,
                    ),
                    border: const OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.zero,
                    ),
                  ),
                ),
                25.ht,
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    " Address",
                    style: TextStyle(
                      fontFamily: "Urbanist",
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColors.black1.withOpacity(0.38),
                    ),
                  ),
                ),
                10.ht,
                TextField(
                  cursorColor: AppColors.black,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: AppColors.grey12,
                    contentPadding: EdgeInsets.only(left: 15.w),
                    hintText: "6th-Road",
                    hintStyle: TextStyle(
                      color: AppColors.black1.withOpacity(0.38),
                      fontFamily: "Inter",
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w400,
                    ),
                    border: const OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.zero,
                    ),
                  ),
                ),
                60.ht,
                CustomElevatedButton(
                    text: "Continue",
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    width: 400.w)
              ],
            ),
          ),
        ));
  }
}
