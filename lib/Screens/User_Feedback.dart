import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:room_roamer_new/Screens/Home_Screen.dart';
import 'package:room_roamer_new/Widgets/Custom_elevated_button.dart';
import 'package:room_roamer_new/utils/AppColors.dart';

class FeedbackScreen extends StatefulWidget {
  const FeedbackScreen({super.key});

  @override
  State<FeedbackScreen> createState() => _FeedbackScreenState();
}

class _FeedbackScreenState extends State<FeedbackScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white_color,
        title: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "User Support & Feedback",
                style: TextStyle(
                  color: AppColors.black,
                  fontFamily: "Urbanist",
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(width: 23.w),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:
              EdgeInsets.only(left: 12.w, right: 12.w, top: 12.h, bottom: 40.h),
          child: Column(
            children: [
              Container(
                height: 100.h,
                decoration: BoxDecoration(
                  color: AppColors.grey12,
                  borderRadius: BorderRadius.circular(14.r),
                ),
                child: Row(
                  children: [
                    Image.asset("Assets/images/room1.png"),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 12.h,
                        ),
                        Text(
                          "Azmat Hostel",
                          style: TextStyle(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w600,
                            color: AppColors.black,
                            fontFamily: "Urbanist",
                          ),
                        ),
                        SizedBox(
                          height: 6.h,
                        ),
                        Text(
                          "Lorem Ipsum is simply dumm,...",
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w300,
                            color: AppColors.black1.withOpacity(0.38),
                            fontFamily: "Urbanist",
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 14.h,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Give Rating",
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColors.black,
                    fontFamily: "Urbanist",
                  ),
                ),
              ),
              SizedBox(
                height: 9.h,
              ),
              RatingBar.builder(
                initialRating: 3,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemPadding: EdgeInsets.symmetric(horizontal: 4.0.w),
                itemBuilder: (context, _) => Icon(
                  Icons.star,
                  color: AppColors.yellow_color,
                ),
                onRatingUpdate: (rating) {
                  print(rating);
                },
              ),
              SizedBox(
                height: 14.h,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 12.w),
                  child: Text(
                    "Give your reviews about hostel",
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w600,
                      color: AppColors.black,
                      fontFamily: "Urbanist",
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 14.h,
              ),
              SizedBox(
                width: 360.w,
                height: 450.h,
                child: TextField(
                  cursorColor: AppColors.border_clr,
                  maxLines:
                      16, // Set to null for an unlimited number of lines, or specify the maximum number of lines
                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(
                    hintText: 'Give Your Feedback',
                    hintStyle: TextStyle(
                      fontFamily: "Urbanist",
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                      color: AppColors.black,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14.r),
                      borderSide: BorderSide(color: AppColors.grey12),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: AppColors.border_clr),
                        borderRadius: BorderRadius.circular(10.r)),
                  ),
                ),
              ),
              SizedBox(
                height: 26.h,
              ),
              CustomElevatedButton(
                  text: "Submit",
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomeScreen()));
                  },
                  width: 400.w),
            ],
          ),
        ),
      ),
    );
  }
}
