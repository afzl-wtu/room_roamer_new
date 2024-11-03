import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:room_roamer_new/utils/AppColors.dart';

class CustomElevatedButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final double width;

  const CustomElevatedButton({
    required this.text,
    required this.onPressed,
    required this.width,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.all(0),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.r))),
      child: Container(
        decoration: BoxDecoration(
            gradient: AppColors.linearGradient,
            borderRadius: BorderRadius.circular(10.r)),
        alignment: Alignment.center,
        width: width,
        height: 55.h,
        child: Text(
          text,
          style: TextStyle(
              color: AppColors.white_color,
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
              fontFamily: "Urbanist"),
        ),
      ),
    );
  }
}
