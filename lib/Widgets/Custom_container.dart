import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:room_roamer_new/utils/extensions.dart';

class CustomContainer extends StatelessWidget {
  final String imagePath;
  final String title;
  final String content;

  const CustomContainer({
    super.key,
    required this.imagePath,
    required this.title,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          imagePath,
          width: 50.w, // Adjust width as needed
          height: 50.h, // Adjust height as needed
        ),
        SizedBox(width: 10.w), // Add space between image and text
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontFamily: "Urbanist",
                fontSize: 20.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 10.h), // Add space between texts
            Text(
              content,
              style: TextStyle(
                fontFamily: "Urbanist",
                fontSize: 16.sp,
                fontWeight: FontWeight.normal,
              ),
            ),
          ],
        )
      ],
    );
  }
}
