import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:room_roamer_new/Screens/User_profile.dart';
import 'package:room_roamer_new/utils/AppColors.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'hostel_information.dart';

class HostelScreen extends StatefulWidget {
  const HostelScreen({super.key});

  @override
  State<HostelScreen> createState() => _HostelScreenState();
}

class _HostelScreenState extends State<HostelScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 60.h, left: 20.w, right: 20.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                    width: 30.w,
                    height: 30.h,
                    child: InkWell(
                        overlayColor:
                            WidgetStatePropertyAll(Colors.transparent),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const UserProfile(),
                            ),
                          );
                        },
                        child: Image.asset('Assets/images/Profile.png'))),
                SizedBox(
                  height: 35.h,
                  width: 239.w,
                  child: TextFormField(
                    cursorColor: AppColors.black1.withOpacity(0.38),
                    cursorHeight: 25.h,
                    decoration: InputDecoration(
                      suffixIcon: Icon(
                        Icons.search,
                        color: AppColors.black1.withOpacity(0.38),
                        size: 16.sp,
                      ),
                      hintText: 'Search Hostel By Name or Location',
                      hintStyle: TextStyle(
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w500,
                        color: AppColors.black1.withOpacity(0.38),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: AppColors.black1.withOpacity(0.38),
                            width: 1.0.w),
                        borderRadius: BorderRadius.circular(10.0.r),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: AppColors.grey12, width: 1.0.w),
                        borderRadius: BorderRadius.circular(10.0.r),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                    width: 20.w,
                    height: 20.h,
                    child: Image.asset('Assets/images/plus.png')),
                SizedBox(
                    width: 20.w,
                    height: 20.h,
                    child: Image.asset('Assets/images/notification.png')),
              ],
            ),
            SizedBox(
              height: 30.h,
            ),
            Text(
              'Hostels',
              style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.w700),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 7,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      InkWell(
                        child: Container(
                            height: 100.h,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: AppColors.grey12,
                              borderRadius: BorderRadius.circular(15.r),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                    height: 100.h,
                                    width: 100.w,
                                    child: Image.asset(
                                      "Assets/images/room1.png",
                                    )),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Azmat Hostel',
                                      style: TextStyle(
                                          fontSize: 18.sp,
                                          fontWeight: FontWeight.w600,
                                          color: AppColors.black),
                                    ),
                                    Text(
                                      'Lorem is just dumm text,....',
                                      style: TextStyle(
                                        fontSize: 13.sp,
                                        fontWeight: FontWeight.w500,
                                        color:
                                            AppColors.black1.withOpacity(0.38),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          'Rating',
                                          style: TextStyle(
                                            fontSize: 13.sp,
                                            fontWeight: FontWeight.w400,
                                            color: AppColors.black1
                                                .withOpacity(0.38),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 8.w,
                                        ),
                                        RatingBar.builder(
                                          minRating: 5,
                                          itemSize: 14.sp,
                                          initialRating: 5,
                                          itemCount: 5,
                                          itemBuilder: (context, _) => Icon(
                                            Icons.star,
                                            size: 6.sp,
                                            color: AppColors.yellow_color,
                                          ),
                                          onRatingUpdate: (rating) {
                                            print(rating);
                                          },
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Container(
                                      height: 32.h,
                                      width: 32.w,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(7.sp),
                                        border: Border.all(
                                            color: AppColors.black1
                                                .withOpacity(0.38)),
                                      ),
                                      child: Image.asset(
                                        "Assets/images/Vector.png",
                                      )),
                                ),
                              ],
                            )),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const HostelInformation()));
                        },
                      ),
                      SizedBox(
                        height: 15.h,
                      )
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
