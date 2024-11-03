import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:room_roamer_new/Screens/CCTV_Camera_Security.dart';
import 'package:room_roamer_new/Screens/Dashboard.dart';
import 'package:room_roamer_new/Screens/Generator_Screen.dart';
import 'package:room_roamer_new/Screens/Laundry_Screen.dart';
import 'package:room_roamer_new/Screens/Parking_Area_Screen.dart';
import 'package:room_roamer_new/Screens/Security_guards.dart';
import 'package:room_roamer_new/Screens/mess_menu.dart';
import 'package:room_roamer_new/Widgets/Custom_elevated_button.dart';
import 'package:room_roamer_new/utils/AppColors.dart';
import 'package:room_roamer_new/utils/extensions.dart';

class HostelProfileScreen extends StatefulWidget {
  const HostelProfileScreen({super.key});

  @override
  State<HostelProfileScreen> createState() => _HostelProfileScreenState();
}

class _HostelProfileScreenState extends State<HostelProfileScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _hostelNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _locationController = TextEditingController();
  bool isValidEmail(String email) {
    final RegExp regex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    return regex.hasMatch(email);
  }

  List<String> facilities = [
    'Guard/Warden',
    'CCTV Camera',
    'Generator/Geyser',
    'Mess Menu',
    'Parking Area',
    ' Laundry',
  ];
  List<IconData> facilityIcons = [
    Icons.security,
    Icons.videocam,
    Icons.local_gas_station,
    Icons.restaurant_menu_outlined,
    Icons.car_crash_sharp,
    Icons.water_drop,
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
                "Hostel Owner",
                style: TextStyle(
                  color: AppColors.black,
                  fontFamily: "Urbanist",
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(width: 40.w),
            ],
          ),
        ),
      ),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: 10.w, right: 10.w, bottom: 20.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Create Your Hostel’s Profile",
                  style: TextStyle(
                    color: AppColors.black,
                    fontFamily: "Urbanist",
                    fontSize: 25.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: 50.h,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Hostel name ",
                    style: TextStyle(
                      color: AppColors.black,
                      fontFamily: "Urbanist",
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
                SizedBox(
                  height: 13.h,
                ),
                TextFormField(
                  cursorColor: AppColors.border_clr,
                  controller:
                      _hostelNameController, // Add your TextEditingController here
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.border_clr),
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.border_clr),
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    hintText: 'Name ',
                    hintStyle:
                        TextStyle(fontSize: 15.sp, fontFamily: "Urbanist"),
                    contentPadding: EdgeInsets.only(top: 10.h, left: 12.w),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter the hostel name';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 20.h,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Email Address",
                    style: TextStyle(
                      color: AppColors.black,
                      fontFamily: "Urbanist",
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
                SizedBox(
                  height: 13.h,
                ),
                TextFormField(
                  cursorColor: AppColors.border_clr,
                  controller: _emailController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.border_clr),
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.border_clr),
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    hintText: 'Email ',
                    hintStyle:
                        TextStyle(fontSize: 15.sp, fontFamily: "Urbanist"),
                    contentPadding: EdgeInsets.only(top: 10.h, left: 12.w),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email address';
                    } else if (!isValidEmail(value)) {
                      return 'Please enter a valid email address';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 20.h,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Phone number",
                    style: TextStyle(
                      color: AppColors.black,
                      fontFamily: "Urbanist",
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
                SizedBox(
                  height: 13.h,
                ),
                TextFormField(
                  keyboardType: TextInputType.phone,
                  controller: _phoneController,
                  cursorColor: AppColors.border_clr,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.border_clr),
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.border_clr),
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    hintText: 'Phone number ',
                    hintStyle:
                        TextStyle(fontSize: 15.sp, fontFamily: "Urbanist"),
                    contentPadding: EdgeInsets.only(top: 10.h, left: 12.w),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your phone number';
                    } else if (value.length != 11) {
                      return 'Phone number must have exactly 11 digits';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 20.h,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Location",
                    style: TextStyle(
                      color: AppColors.black,
                      fontFamily: "Urbanist",
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
                SizedBox(
                  height: 13.h,
                ),
                TextFormField(
                  controller: _locationController,
                  cursorColor: AppColors.border_clr,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.border_clr),
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.border_clr),
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    hintText: 'Add location ',
                    hintStyle:
                        TextStyle(fontSize: 15.sp, fontFamily: "Urbanist"),
                    contentPadding: EdgeInsets.only(top: 10.h, left: 12.w),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter the location';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 14.h,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Facilities (Mark Down Your Facilities)",
                    style: TextStyle(
                      color: AppColors.black,
                      fontFamily: "Urbanist",
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(
                  height: 25.h,
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
                              builder: (context) => const SecurityGuardScreen(),
                            ),
                          );
                          break;
                        case 1:
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const CCTVSecurityScreen(),
                            ),
                          );
                          break;
                        case 2:
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const GeneratorScreen(),
                            ),
                          );
                          break;
                        case 3:
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const MenuScreen(),
                            ),
                          );
                          break;
                        case 4:
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ParkingAreaScreen(),
                            ),
                          );
                          break;
                        case 5:
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
                  height: 13.h,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Hostel View",
                    style: TextStyle(
                      color: AppColors.black,
                      fontFamily: "Urbanist",
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          height: 15.h,
                        ),
                        Text(
                          "Add Pictures",
                          style: TextStyle(
                            color: AppColors.black,
                            fontFamily: "Urbanist",
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        Container(
                          height: 100.h,
                          width: 180.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12.r),
                              color: AppColors.grey12),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              "Upload Picture",
                              style: TextStyle(
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w300,
                                  color: AppColors.black,
                                  fontFamily: "Urbanist"),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 15.h,
                        ),
                        Text(
                          "Enter Rooms View",
                          style: TextStyle(
                            color: AppColors.black,
                            fontFamily: "Urbanist",
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        Container(
                          height: 100.h,
                          width: 180.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12.r),
                              color: AppColors.grey12),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              " Upload Picture",
                              style: TextStyle(
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w300,
                                  color: AppColors.black,
                                  fontFamily: "Urbanist"),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
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
                  height: 40.h,
                ),
                CustomElevatedButton(
                  text: "Go to the Dashboard",
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const DashboardScreen()),
                      );
                    }
                  },
                  width: 400.w,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
