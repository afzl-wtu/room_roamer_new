import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:room_roamer_new/Screens/Dashboard.dart';
import 'package:room_roamer_new/Widgets/Custom_elevated_button.dart';
import 'package:room_roamer_new/utils/AppColors.dart';

class DeleteHostelScreen extends StatefulWidget {
  const DeleteHostelScreen({super.key});

  @override
  State<DeleteHostelScreen> createState() => _DeleteHostelScreenState();
}

class _DeleteHostelScreenState extends State<DeleteHostelScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
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
              SizedBox(width: 40.w),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              Text(
                "Select Profile Wanna to Delete",
                style: TextStyle(
                  color: AppColors.black,
                  fontFamily: "Urbanist",
                  fontSize: 19.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: 40.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 100.h,
                    width: 180.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.r),
                      gradient: AppColors.linearGradient,
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        " Hostel Profile 1",
                        style: TextStyle(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w600,
                          color: AppColors.grey12,
                          fontFamily: "Urbanist",
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 100.h,
                    width: 180.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.r),
                      gradient: AppColors.linearGradient,
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        " Hostel Profile 2 ",
                        style: TextStyle(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w600,
                          color: AppColors.grey12,
                          fontFamily: "Urbanist",
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 36.h,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Why you are deleting profile?",
                  style: TextStyle(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w300,
                    color: AppColors.black,
                    fontFamily: "Urbanist",
                  ),
                ),
              ),
              SizedBox(
                height: 23.h,
              ),
              SizedBox(
                width: 360.w,
                height: 200.h,
                child: TextField(
                  cursorColor: AppColors.border_clr,
                  maxLines:
                      6, // Set to null for an unlimited number of lines, or specify the maximum number of lines
                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(
                    hintText: 'Reason for deleting....',
                    hintStyle: TextStyle(
                        fontFamily: "Urbanist",
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14.r),
                      borderSide: BorderSide(color: AppColors.grey12),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.border_clr),
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 46.h,
              ),
              Container(
                height: 100.h,
                width: 180.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.r),
                  gradient: AppColors.linearGradient,
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Delete The Hostel",
                    style: TextStyle(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w600,
                      color: AppColors.grey12,
                      fontFamily: "Urbanist",
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 106.h,
              ),
              CustomElevatedButton(
                  text: "Confrim",
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 20.w,
                            vertical: 10.h,
                          ),
                          titlePadding: const EdgeInsets.all(0),
                          content: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Align(
                                  alignment: Alignment.topRight,
                                  child:
                                      Icon(Icons.close, color: AppColors.black),
                                ),
                              ),
                              Container(
                                width: 60.w,
                                height: 50.w,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  gradient: AppColors.linearGradient,
                                  // Replace with your desired color
                                ),
                                child: Center(
                                    child: Image.asset(
                                  "Assets/images/charm_tick.png",
                                )),
                              ),
                              SizedBox(height: 20.h),
                              Text(
                                " Deleted Successfully!",
                                style: TextStyle(
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w700,
                                  color: AppColors.black,
                                  fontFamily: "Urbanist",
                                ),
                              ),
                            ],
                          ),
                          actions: [
                            SizedBox(height: 30.h),
                            SizedBox(
                              height: 45.h,
                              child: CustomElevatedButton(
                                text: "Continue",
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const DashboardScreen()));
                                },
                                width: 440.w,
                              ),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  width: 400.w)
            ],
          ),
        ),
      ),
    );
  }
}
