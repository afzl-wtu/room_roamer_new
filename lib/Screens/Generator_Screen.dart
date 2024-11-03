import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:room_roamer_new/Widgets/Custom_elevated_button.dart';
import 'package:room_roamer_new/utils/AppColors.dart';
import 'package:room_roamer_new/utils/extensions.dart';

class GeneratorScreen extends StatefulWidget {
  const GeneratorScreen({super.key});

  @override
  State<GeneratorScreen> createState() => _GeneratorScreenState();
}

class _GeneratorScreenState extends State<GeneratorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.only(left: 20.w),
          child: Text(
            "Generator/Geyser",
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
        padding: EdgeInsets.only(
          top: 45.h,
          bottom: 35.h,
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                right: 15.w,
              ),
              child: Container(
                width: 330.w, // Set the width of the container
                height: 172.h, // Set the height of the container
                decoration: BoxDecoration(
                  gradient: AppColors
                      .linearGradient, // You can change the color as needed
                  borderRadius: BorderRadius.circular(
                      10.r), // Add rounded corners if desired
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 0.h,
                      right: 0.w,
                      child: Padding(
                        padding: EdgeInsets.only(left: 35.w),
                        child: Image.asset(
                          "Assets/images/generator.png",
                          width: 230.w, // Set the width of the image
                          height: 162.h, // Set the height of the image
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0.h,
                      left: 0.w,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              left: 8.w,
                            ),
                            child: Text(
                              "Generator",
                              style: TextStyle(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w600,
                                fontFamily: "Urbanist",
                                color: AppColors.white_color,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10.w, bottom: 15.h),
                            child: Text(
                              "Energized",
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                                fontFamily: "Urbanist",
                                color: AppColors.white_color,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            55.ht,
            Padding(
              padding: EdgeInsets.only(
                right: 15.w,
              ),
              child: Container(
                width: 330.w, // Set the width of the container
                height: 172.h, // Set the height of the container
                decoration: BoxDecoration(
                  gradient: AppColors
                      .linearGradient, // You can change the color as needed
                  borderRadius: BorderRadius.circular(
                      10.r), // Add rounded corners if desired
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 0.h,
                      right: 0.w,
                      child: Image.asset(
                        "Assets/images/geyser.png",
                        width: 155.w, // Set the width of the image
                        height: 162.h, // Set the height of the image
                        // fit: BoxFit.contain,
                      ),
                    ),
                    Positioned(
                      bottom: 0.h,
                      left: 0.w,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              left: 8.w,
                            ),
                            child: Text(
                              "Geyser",
                              style: TextStyle(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w600,
                                fontFamily: "Urbanist",
                                color: AppColors.white_color,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10.w, bottom: 15.h),
                            child: Text(
                              "Automatic",
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                                fontFamily: "Urbanist",
                                color: AppColors.white_color,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Spacer(),
            Padding(
              padding: EdgeInsets.only(left: 15.w),
              child: CustomElevatedButton(
                  text: "Continue",
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  width: 400.w),
            )
          ],
        ),
      ),
    );
  }
}
