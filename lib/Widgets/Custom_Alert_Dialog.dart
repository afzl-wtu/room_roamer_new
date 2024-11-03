import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:room_roamer_new/Widgets/Custom_elevated_button.dart';
import 'package:room_roamer_new/utils/AppColors.dart';

class CustomAlertDialog extends StatelessWidget {
  final String title;
  final String content;
  final String buttonText;
  final VoidCallback onButtonPressed;

  const CustomAlertDialog({
    required this.title,
    required this.content,
    required this.buttonText,
    required this.onButtonPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Center(
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Align(
                  alignment: Alignment.topRight,
                  child: Icon(
                    Icons.close,
                    color: AppColors.grey12,
                  )),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              title,
              style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                  fontFamily: "Urbanist"),
            ),
          ],
        ),
      ),
      content: Text(
        content,
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: 15.sp,
            fontWeight: FontWeight.w500,
            color: AppColors.grey12,
            fontFamily: "Urbanist"),
      ),
      actions: [
        CustomElevatedButton(
          onPressed: onButtonPressed,
          text: buttonText,
          width: double.infinity,
        ),
      ],
    );
  }
}
