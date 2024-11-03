import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:room_roamer_new/Screens/1Seater_room.dart';
import 'package:room_roamer_new/Screens/CCTV_Camera_Security.dart';
import 'package:room_roamer_new/Screens/Generator_Screen.dart';
import 'package:room_roamer_new/Screens/Hostel_Location.dart';
import 'package:room_roamer_new/Screens/Laundry_Screen.dart';
import 'package:room_roamer_new/Screens/Parking_Area_Screen.dart';
import 'package:room_roamer_new/Screens/Security_guards.dart';
import 'package:room_roamer_new/Screens/mess_menu.dart';
import 'package:room_roamer_new/Widgets/Custom_elevated_button.dart';
import 'package:room_roamer_new/utils/AppColors.dart';
import 'package:room_roamer_new/utils/extensions.dart';

class HostelInformation extends StatefulWidget {
  const HostelInformation({super.key});

  @override
  State<HostelInformation> createState() => _HostelInformationState();
}

class _HostelInformationState extends State<HostelInformation> {
  List<String> facilities = [
    'Hostel Location',
    'Parking Area',
    'Guard/Warden',
    'CCTV Camera ',
    'Generator/Geyser',
    'Mess Menu',
    'Laundry'
  ];
  List<String> roomTypes = [
    '1 Seater Room Rent',
    '2 Seater Room Rent',
    '3 Seater Room Rent',
    '4 Seater Room Rent',
  ];
  List<String> roomRent = [
    'Rs 20,000',
    'Rs 18,000',
    'Rs 15,000',
    'Rs 12,000',
  ];
  int selectedRoomIndex = -1;
  List<IconData> facilityIcons = [
    Icons.location_on,
    Icons.car_crash_sharp,
    Icons.security,
    Icons.videocam,
    Icons.local_gas_station,
    Icons.restaurant_menu_outlined,
    Icons.water_drop_sharp
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Hostel Information',
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 24.sp,
                    fontFamily: "Urbanist",
                    color: AppColors.black),
              ),
              SizedBox(
                width: 40.w,
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 10.w, right: 10.w, top: 20.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
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
                      child: Image.asset("Assets/images/room1.png"),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        right: 65.w,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Azmat Hostel',
                            style: TextStyle(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w600,
                                color: AppColors.black,
                                fontFamily: "Urbanist"),
                          ),
                          Text(
                            'Lorem is text,....',
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                              color: AppColors.black1.withOpacity(0.38),
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                'Rating',
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.black1.withOpacity(0.38),
                                    fontFamily: "Urbanist"),
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
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 20.w),
                      child: Container(
                        height: 32.h,
                        width: 32.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7.r),
                          border: Border.all(color: AppColors.grey1),
                        ),
                        child: Image.asset("Assets/images/Vector.png"),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                'Facilities',
                style: TextStyle(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w700,
                    fontFamily: "Urbanist"),
              ),
              15.ht,
              GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                  childAspectRatio: 3,
                ),
                shrinkWrap: true,
                itemCount: facilities.length,
                itemBuilder: (context, index) => GestureDetector(
                  onTap: () {
                    switch (index) {
                      case 0:
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HostelLocationScreen(),
                          ),
                        );
                        break;
                      case 1:
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ParkingAreaScreen(),
                          ),
                        );
                        break;
                      case 2:
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SecurityGuardScreen(),
                          ),
                        );
                        break;
                      case 3:
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const CCTVSecurityScreen(),
                          ),
                        );
                        break;
                      case 4:
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const GeneratorScreen(),
                          ),
                        );
                        break;
                      case 5:
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const MenuScreen(),
                          ),
                        );
                        break;
                      case 6:
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LaundryScreen(),
                          ),
                        );
                        break;
                    }
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.sp),
                        gradient: AppColors.linearGradient),
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.only(left: 7.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              facilityIcons[index],
                              color: AppColors.white_color,
                              size: 22.0.sp,
                            ),
                            SizedBox(width: 8.0.w),
                            Text(
                              facilities[index],
                              style: TextStyle(
                                  color: AppColors.white_color,
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: "Urbanist"),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                'Select Room',
                style: TextStyle(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w700,
                    fontFamily: "Urbanist"),
              ),
              SizedBox(
                height: 10.h,
              ),
              GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                  childAspectRatio: 3,
                ),
                shrinkWrap: true,
                itemCount: roomTypes.length,
                itemBuilder: (context, index) => GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedRoomIndex = index;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.sp),
                      color: selectedRoomIndex == index
                          ? AppColors.grey12 // Pink color for selected room
                          : AppColors.grey12, // Grey color for unselected rooms
                      border: selectedRoomIndex == index
                          ? Border.all(
                              color: AppColors.purple_color, width: 2.0.w)
                          : null, // Border only for selected room
                    ),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            roomTypes[index],
                            style: TextStyle(
                                color: selectedRoomIndex == index
                                    ? AppColors.black
                                    : AppColors
                                        .black, // Adjust text color for visibility
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600,
                                fontFamily: "Urbanist"),
                          ),
                          Text(
                            roomRent[index],
                            style: TextStyle(
                                color: AppColors.Orange,
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w600,
                                fontFamily: "Urbanist"),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 40.h,
              ),
              CustomElevatedButton(
                  text: "Next",
                  onPressed: () {
                    if (selectedRoomIndex != -1) {
                      // Navigate to the corresponding room's page
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => OneSeaterRoom(
                            roomType: roomTypes[selectedRoomIndex],
                          ),
                        ),
                      );
                    } else {
                      // Show an alert or message indicating that no room is selected
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          backgroundColor: AppColors.white_color,
                          title: Text(
                            "No Room Selected",
                            style: TextStyle(
                                fontSize: 24.sp,
                                fontFamily: "Urbanist",
                                fontWeight: FontWeight.w600),
                          ),
                          content: Text(
                            "Please select a room before proceeding.",
                            style: TextStyle(
                              fontSize: 18.sp,
                              fontFamily: "Urbanist",
                              fontWeight: FontWeight.w300,
                              color: AppColors.black1,
                            ),
                          ),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text(
                                "OK",
                                style: TextStyle(
                                  fontSize: 15.sp,
                                  fontFamily: "Urbanist",
                                  fontWeight: FontWeight.w700,
                                  color: AppColors.black1,
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    }
                  },
                  width: 400.w),
            ],
          ),
        ),
      ),
    );
  }
}
