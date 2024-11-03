import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:room_roamer_new/Screens/Reserve_Room_Screen.dart';
import 'package:room_roamer_new/Widgets/Custom_elevated_button.dart';
import 'package:room_roamer_new/utils/AppColors.dart';

class OneSeaterRoom extends StatefulWidget {
  final String roomType;
  const OneSeaterRoom({super.key, required this.roomType});
  @override
  State<OneSeaterRoom> createState() => _OneSeaterRoomState();
}

class _OneSeaterRoomState extends State<OneSeaterRoom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.only(
            right: 50.w,
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
      body: SingleChildScrollView(
        child: Padding(
          padding:
              EdgeInsets.only(left: 15.w, right: 15.w, top: 15.h, bottom: 5.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 14.h,
              ),
              Text(
                "View Rooms Picture",
                style: TextStyle(
                  fontFamily: "Urbanist",
                  fontSize: 20.sp,
                  color: AppColors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 200.h,
                width: 400.w,
                child: Image.asset(
                  "Assets/images/Room11.png",
                ),
              ),
              SizedBox(
                height: 180.h,
                child: Image.asset(
                  "Assets/images/Room2.png",
                ),
              ),
              SizedBox(
                height: 14.h,
              ),
              Text(
                "3D View of Room in Vedio",
                style: TextStyle(
                  fontFamily: "Urbanist",
                  fontSize: 19.sp,
                  color: AppColors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Center(
                child: SizedBox(
                  height: 180.h,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.asset("Assets/images/Room11.png"),
                      Image.asset("Assets/images/Ellipse 812.png"),
                      Positioned(
                          child: Icon(
                        Icons.play_arrow,
                        color: AppColors.primary_pink,
                      )),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 32.h,
              ),
              CustomElevatedButton(
                  text: "Reserve Room",
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ReservedRoomScreen()));
                  },
                  width: 400.w),
            ],
          ),
        ),
      ),
    );
  }
}
