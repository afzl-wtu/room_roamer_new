import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:room_roamer_new/Screens/Login_Screen.dart';
import 'package:room_roamer_new/Widgets/Custom_elevated_button.dart';
import 'package:room_roamer_new/utils/AppColors.dart';
import 'package:room_roamer_new/utils/extensions.dart';

class Forgetpassword4 extends StatefulWidget {
  const Forgetpassword4({super.key});

  @override
  State<Forgetpassword4> createState() => _Forgetpassword4State();
}

class _Forgetpassword4State extends State<Forgetpassword4> {
  bool _isObscure = true;
  bool _isObscure1 = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white_color,
      body: SingleChildScrollView(
        child: Column(
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
                padding: EdgeInsets.only(left: 19.w),
                child: Text(
                  "Email",
                  style: TextStyle(
                    fontSize: 15.sp,
                    fontFamily: "Urbanist",
                    color: AppColors.black,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
            ),
            17.ht,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: TextFormField(
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
                  hintText: ' Email ',
                  hintStyle: TextStyle(fontSize: 15.sp),
                  contentPadding: EdgeInsets.only(top: 10.h, left: 12.w),
                ),
              ),
            ),
            15.ht,
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 19.w),
                child: Text(
                  "Password",
                  style: TextStyle(
                    fontSize: 15.sp,
                    fontFamily: "Urbanist",
                    color: AppColors.black,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
            ),
            17.ht,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: TextFormField(
                cursorColor: AppColors.border_clr,
                obscureText: _isObscure,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.border_clr),
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.border_clr),
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  hintText: ' Password ',
                  hintStyle: TextStyle(fontSize: 15.sp),
                  contentPadding: EdgeInsets.only(top: 10.h, left: 12.w),
                  suffixIcon: IconButton(
                    icon: Icon(
                        _isObscure ? Icons.visibility_off : Icons.visibility),
                    onPressed: () => setState(() {
                      _isObscure = !_isObscure;
                    }),
                  ),
                ),
              ),
            ),
            20.ht,
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 19.w),
                child: Text(
                  "Confirm Password",
                  style: TextStyle(
                    fontSize: 15.sp,
                    fontFamily: "Urbanist",
                    color: AppColors.black,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
            ),
            17.ht,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: TextField(
                cursorColor: AppColors.border_clr,
                obscureText: _isObscure1,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.border_clr),
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.border_clr),
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  hintText: ' Re-Type Password ',
                  hintStyle: TextStyle(fontSize: 15.sp),
                  contentPadding: EdgeInsets.only(top: 10.h, left: 12.w),
                  suffixIcon: IconButton(
                    icon: Icon(
                        _isObscure1 ? Icons.visibility_off : Icons.visibility),
                    onPressed: () => setState(() {
                      _isObscure1 = !_isObscure1;
                    }),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 45.h,
            ),
            CustomElevatedButton(text: "Save", onPressed: () {}, width: 400.w),
            15.ht,
            Padding(
              padding: EdgeInsets.only(left: 165.w),
              child: InkWell(
                overlayColor: WidgetStatePropertyAll(Colors.transparent),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginScreen()));
                },
                child: Row(
                  children: [
                    Text(
                      "Back to",
                      style: TextStyle(
                        color: AppColors.black,
                        fontFamily: "Urbanist",
                        fontWeight: FontWeight.w500,
                        fontSize: 15.sp,
                      ),
                    ),
                    5.wd,
                    Text("Login",
                        style: TextStyle(
                          color: AppColors.purple_dark,
                          fontFamily: "Urbanist",
                          fontWeight: FontWeight.w500,
                          fontSize: 15.sp,
                        )),
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
