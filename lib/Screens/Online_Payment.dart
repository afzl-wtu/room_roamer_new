import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:room_roamer_new/Screens/User_Feedback.dart';
import 'package:room_roamer_new/Widgets/Custom_elevated_button.dart';
import 'package:room_roamer_new/utils/AppColors.dart';

class OnlinePaymentScreen extends StatefulWidget {
  const OnlinePaymentScreen({super.key});

  @override
  State<OnlinePaymentScreen> createState() => _OnlinePaymentScreenState();
}

class _OnlinePaymentScreenState extends State<OnlinePaymentScreen> {
  final TextEditingController _accountnumberController =
      TextEditingController();
  final TextEditingController _textController =
      TextEditingController(text: "Rs 20,000");
  String? _selectedPaymentMethod;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(right: 15.w),
                child: Text(
                  "Online Payment",
                  style: TextStyle(
                    color: AppColors.black,
                    fontFamily: "Urbanist",
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              SizedBox(width: 23.w),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(12.w),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Select Payment Method ",
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColors.black,
                    fontFamily: "Urbanist",
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              Container(
                height: 60.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.grey12,
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset('Assets/images/jazzcash.png'),
                          Radio<String>(
                            value: 'jazzcash',
                            groupValue: _selectedPaymentMethod,
                            onChanged: (value) {
                              setState(() {
                                _selectedPaymentMethod = value;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.h),
              Container(
                height: 60.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.grey12,
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset('Assets/images/easypaisa.png'),
                          Radio<String>(
                            value: 'easypaisa',
                            groupValue: _selectedPaymentMethod,
                            onChanged: (value) {
                              setState(() {
                                _selectedPaymentMethod = value;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.h),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Account Number",
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    color: AppColors.black2,
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              SizedBox(
                height: 50.h,
                child: TextFormField(
                  cursorColor: AppColors.border_clr,
                  controller: _accountnumberController,
                  decoration: InputDecoration(
                    hintText: '+927643679808644',
                    hintStyle: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400,
                        color: AppColors.black,
                        fontFamily: "Urbanist"),
                    contentPadding: EdgeInsets.only(top: 10.h, left: 12.w),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.border_clr),
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.border_clr),
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                  ),
                  keyboardType: TextInputType.number,
                ),
              ),
              SizedBox(height: 16.h),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Total Amount",
                  style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: AppColors.black2,
                      fontFamily: "Urbanist"),
                ),
              ),
              SizedBox(height: 20.h),
              TextFormField(
                readOnly: true,
                controller: _textController,
                cursorColor: AppColors.black1.withOpacity(0.38),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  filled: true,
                  fillColor: AppColors.grey12,
                  contentPadding: const EdgeInsets.all(8.0),
                ),
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                  color: AppColors.grey3,
                ),
              ),
              SizedBox(height: 30.h),
              Align(
                alignment: Alignment.centerLeft,
                child: SizedBox(
                  height: 40.h,
                  child: CustomElevatedButton(
                    text: "Pay",
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            backgroundColor: AppColors.white_color,
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 20.w,
                              vertical: 10.h,
                            ),
                            titlePadding: const EdgeInsets.all(0),
                            content: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child: Align(
                                    alignment: Alignment.topRight,
                                    child: Icon(
                                      Icons.close,
                                      color: AppColors.black,
                                      size: 20.sp,
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 60.w,
                                  height: 50.w,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    gradient: AppColors.linearGradient,
                                    // Replace with your desired color
                                  ),
                                  child: Center(
                                      child: Image.asset(
                                    "Assets/images/charm_tick.png",
                                  )),
                                ),
                                SizedBox(height: 10.h),
                                Text(
                                  "Payment Successfully!",
                                  style: TextStyle(
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.w700,
                                      color: AppColors.black,
                                      fontFamily: "Urbanist"),
                                ),
                                SizedBox(height: 10.h),
                                Text(
                                  "Thanks For Booking",
                                  style: TextStyle(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.black2,
                                      fontFamily: "Urbanist"),
                                ),
                                Text(
                                  "Our Room ",
                                  style: TextStyle(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.black2,
                                      fontFamily: "Urbanist"),
                                ),
                              ],
                            ),
                            actions: [
                              SizedBox(height: 30.h),
                              SizedBox(
                                height: 45.h,
                                child: CustomElevatedButton(
                                  text: "Continue",
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const FeedbackScreen()));
                                  },
                                  width: 440.w,
                                ),
                              ),
                            ],
                          );
                        },
                      );
                    },
                    width: 110.w,
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              Container(
                height: 160.h,
                width: 350.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.r),
                  color: AppColors.grey12,
                ),
                child: Center(
                  child: Text(
                    "Upload Screenshot",
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: AppColors.black2,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 40.h),
              CustomElevatedButton(
                text: "Confirm Payment",
                onPressed: () {},
                width: 400.w,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
