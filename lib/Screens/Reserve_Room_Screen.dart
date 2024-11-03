import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:room_roamer_new/Screens/Online_Payment.dart';
import 'package:room_roamer_new/Widgets/Custom_elevated_button.dart';
import 'package:room_roamer_new/utils/AppColors.dart';

class ReservedRoomScreen extends StatefulWidget {
  const ReservedRoomScreen({super.key});

  @override
  State<ReservedRoomScreen> createState() => _ReservedRoomScreenState();
}

class _ReservedRoomScreenState extends State<ReservedRoomScreen> {
  bool isOnlinePaymentSelected = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.only(
            right: 35.w,
          ),
          child: Center(
            child: Text(
              " One Seater Room Rent   ",
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
            EdgeInsets.only(left: 12.w, right: 12.w, bottom: 45.h, top: 20.h),
        child: Column(
          children: [
            SizedBox(
              height: 200.h,
              width: 600.w,
              child: Image.asset("Assets/images/Room11.png"),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Room Number:16",
                style: TextStyle(
                  fontSize: 19.sp,
                  fontWeight: FontWeight.w600,
                  color: AppColors.black,
                  fontFamily: "Urbanist",
                ),
              ),
            ),
            SizedBox(height: 35.h),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Select Payment",
                style: TextStyle(
                  fontSize: 19.sp,
                  fontWeight: FontWeight.w500,
                  color: AppColors.black,
                  fontFamily: "Urbanist",
                ),
              ),
            ),
            SizedBox(height: 20.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isOnlinePaymentSelected = true;
                    });
                  },
                  child: Container(
                    height: 75.h,
                    width: 170.w,
                    decoration: BoxDecoration(
                      gradient: isOnlinePaymentSelected
                          ? AppColors.linearGradient
                          : AppColors.linearGradient_white,
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 11.h),
                        Icon(
                          CupertinoIcons.macwindow,
                          color: isOnlinePaymentSelected
                              ? AppColors.white_color
                              : AppColors.primary_pink,
                        ),
                        Text(
                          "Online Payment",
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                            color: isOnlinePaymentSelected
                                ? AppColors.white_color
                                : AppColors.primary_pink,
                            fontFamily: "Urbanist",
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isOnlinePaymentSelected = false;
                    });
                  },
                  child: Container(
                    height: 75.h,
                    width: 170.w,
                    decoration: BoxDecoration(
                      gradient: isOnlinePaymentSelected
                          ? AppColors.linearGradient_white
                          : AppColors.linearGradient,
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 11.h),
                        SvgPicture.asset(
                          'Assets/Svgimages/money-hand.svg',
                          color: isOnlinePaymentSelected
                              ? AppColors.primary_pink
                              : AppColors.white_color,
                          semanticsLabel: 'My SVG Image',
                          height: 30.h,
                          width: 0.w,
                        ),
                        Text(
                          "Cash Payment",
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                            color: isOnlinePaymentSelected
                                ? AppColors.primary_pink
                                : AppColors.white_color,
                            fontFamily: "Urbanist",
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const Spacer(),
            CustomElevatedButton(
              text: "Next",
              onPressed: isOnlinePaymentSelected
                  ? () {
                      // Navigate to the corresponding payment method's page
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const OnlinePaymentScreen(),
                        ),
                      );
                    }
                  : () {
                      // Handle the logic for cash payment
                      // This block can be implemented as needed
                    },
              width: 400.w,
            )
          ],
        ),
      ),
    );
  }
}
