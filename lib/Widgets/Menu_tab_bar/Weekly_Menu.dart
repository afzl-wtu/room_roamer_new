import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:room_roamer_new/utils/AppColors.dart';
import 'package:room_roamer_new/utils/extensions.dart';

class WeeklyMenuWidget extends StatelessWidget {
  List<String> imgList = [
    "Assets/images/Chai.png",
    "Assets/images/lunch.png",
    "Assets/images/dinner.png",
  ];
  List<String> titles = [
    "Breakfast",
    "Lunch",
    "Dinner",
  ];
  List<String> contents = [
    "Lorem Ipsum is simply dumm,...Lorem Ipsum is simply dumm,...Lorem Ipsum is simply dumm,...",
    "Lorem Ipsum is simply dumm,...Lorem Ipsum is simply dumm,...Lorem Ipsum is simply dumm,...",
    "Lorem Ipsum is simply dumm,...Lorem Ipsum is simply dumm,...Lorem Ipsum is simply dumm,..."
  ];

  WeeklyMenuWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400.w,
      height: 700.h, // Adjust height as needed
      child: ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.only(bottom: 10.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  imgList[index],
                  width: 150.w,
                  height: 120.h,
                  fit: BoxFit.contain,
                ),
                15.wd,
                SizedBox(
                  height: 170.h,
                  width: 200.w,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      30.ht,
                      Text(
                        titles[index],
                        style: TextStyle(
                            fontSize: 20.sp,
                            fontFamily: "Urbanist",
                            fontWeight: FontWeight.w600,
                            color: AppColors.black1.withOpacity(0.87)),
                      ),
                      3.ht,
                      Text(
                        contents[index],
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontFamily: "Urbanist",
                            fontWeight: FontWeight.w500,
                            color: AppColors.black1.withOpacity(0.38)),
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
