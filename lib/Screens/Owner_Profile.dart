import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:room_roamer_new/Screens/Dashboard.dart';
import 'package:room_roamer_new/Screens/hostel_screen.dart';
import 'package:room_roamer_new/Widgets/Custom_elevated_button.dart';
import 'package:room_roamer_new/utils/AppColors.dart';

class OwnerProfile extends StatefulWidget {
  const OwnerProfile({super.key});

  @override
  State<OwnerProfile> createState() => _OwnerProfileState();
}

class _OwnerProfileState extends State<OwnerProfile> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 100.h,
                ),
                Text(
                  "Setup Profile",
                  style: TextStyle(
                    fontSize: 19.sp,
                    fontWeight: FontWeight.w700,
                    color: AppColors.black,
                    fontFamily: "Urbanist",
                  ),
                ),
                SizedBox(
                  height: 9.h,
                ),
                Text(
                  "Complete Your Profile to Continue",
                  style: TextStyle(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w300,
                    color: AppColors.black,
                    fontFamily: "Urbanist",
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: 260.h,
                    width: 360.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.r),
                      color: AppColors.grey12,
                    ),
                    child: Stack(
                      children: [
                        Column(
                          children: [
                            SizedBox(
                              height: 20.h,
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: EdgeInsets.only(left: 12.w),
                                child: Text(
                                  "Profile Picture ",
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.black,
                                    fontFamily: "Urbanist",
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 40.h,
                            ),
                            Stack(alignment: Alignment.bottomRight, children: [
                              Image.asset("Assets/images/profile12.png"),
                              Image.asset("Assets/images/Group 450.png"),
                            ]),
                            SizedBox(
                              height: 20.h,
                            ),
                            SizedBox(
                              child: Text(
                                "Tap to Add your Profile Picture.",
                                style: TextStyle(
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w200,
                                  color: AppColors.black,
                                  fontFamily: "Urbanist",
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  "Personal Info",
                  style: TextStyle(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColors.black,
                    fontFamily: "Urbanist",
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                TextFormField(
                  cursorColor: AppColors.border_clr,
                  controller: _nameController,
                  decoration: InputDecoration(
                    hintText: 'Your Name',
                    hintStyle: TextStyle(
                        fontSize: 15.sp,
                        color: AppColors.black,
                        fontFamily: "Urbanist",
                        fontWeight: FontWeight.w400),
                    prefixIcon: const Icon(Icons.edit),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.border_clr),
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: AppColors.border_clr),
                        borderRadius: BorderRadius.circular(10.r)),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 12.h, horizontal: 12.w),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your name';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 20.h,
                ),
                TextFormField(
                  cursorColor: AppColors.border_clr,
                  controller: _emailController,
                  decoration: InputDecoration(
                    hintText: 'Email Address ',
                    hintStyle: TextStyle(
                        fontSize: 15.sp,
                        color: AppColors.black,
                        fontFamily: "Urbanist",
                        fontWeight: FontWeight.w400),
                    prefixIcon: const Icon(Icons.email_outlined),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.border_clr),
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: AppColors.border_clr),
                        borderRadius: BorderRadius.circular(10.r)),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 12.h, horizontal: 12.w),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email address';
                    } else if (!value.contains('@')) {
                      return 'Please enter a valid email address';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 20.h,
                ),
                TextFormField(
                  cursorColor: AppColors.border_clr,
                  keyboardType: TextInputType.number,
                  controller: _phoneController,
                  decoration: InputDecoration(
                    hintText: 'Phone Number',
                    hintStyle: TextStyle(
                        fontSize: 15.sp,
                        color: AppColors.black,
                        fontFamily: "Urbanist",
                        fontWeight: FontWeight.w400),
                    prefixIcon: const Icon(Icons.call),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: AppColors.border_clr),
                        borderRadius: BorderRadius.circular(10.r)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: AppColors.border_clr),
                        borderRadius: BorderRadius.circular(10.r)),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 12.h, horizontal: 12.w),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your phone number';
                    } else if (value.length != 11) {
                      return 'Phone number must have exactly 11 digits';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 30.h,
                ),
                CustomElevatedButton(
                    text: "Next",
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const DashboardScreen()));
                      }
                    },
                    width: 400.h)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
