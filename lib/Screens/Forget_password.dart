import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:room_roamer_new/Screens/Forget_Password2.dart';
import 'package:room_roamer_new/Widgets/Custom_elevated_button.dart';
import 'package:room_roamer_new/utils/AppColors.dart';

class ForgetpasswordScreen extends StatefulWidget {
  const ForgetpasswordScreen({super.key});

  @override
  State<ForgetpasswordScreen> createState() => _ForgetpasswordScreenState();
}

class _ForgetpasswordScreenState extends State<ForgetpasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white_color,
      body: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
                child: Image.asset(
              "Assets/images/logo.png",
              height: 390.h,
              width: 280.w,
            )),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 12.w),
                child: Text(
                  "Forgot",
                  style: TextStyle(
                    fontSize: 24.sp,
                    fontFamily: "Urbanist",
                    color: AppColors.black,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 12.w),
                child: Text("Your Password?",
                    style: TextStyle(
                      fontSize: 24.sp,
                      fontFamily: "Urbanist",
                      color: AppColors.black,
                      fontWeight: FontWeight.w700,
                    )),
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: TextField(
                cursorColor: AppColors.border_clr,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.border_clr),
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.border_clr),
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  hintText: ' E-Mail ',
                  hintStyle: TextStyle(
                    fontSize: 15.sp,
                    fontFamily: "Urbanist",
                  ),
                  contentPadding: EdgeInsets.only(top: 10.h, left: 12.w),
                ),
              ),
            ),
            SizedBox(
              height: 45.h,
            ),
            CustomElevatedButton(
                text: "Continue",
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Forgetpassword2()));
                },
                width: 400.w)
          ],
        ),
      ),
    );
  }
}
