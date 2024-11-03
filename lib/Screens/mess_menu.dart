import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:room_roamer_new/Widgets/Menu_tab_bar/Weekly_Menu.dart';
import 'package:room_roamer_new/utils/AppColors.dart';
import 'package:room_roamer_new/utils/extensions.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7,
      child: Scaffold(
        appBar: AppBar(
          title: Padding(
            padding: EdgeInsets.only(left: 65.w),
            child: Text(
              "Mess Menu",
              style: TextStyle(
                color: AppColors.black,
                fontSize: 24.sp,
                fontWeight: FontWeight.w700,
                fontFamily: "Urbanist",
              ),
            ),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.only(left: 12.w, right: 12.w),
          child: Column(children: [
            Container(
              height: 70.h,
              decoration: const BoxDecoration(),
              child: TabBar(
                overlayColor: WidgetStatePropertyAll(Colors.transparent),
                indicatorPadding:
                    EdgeInsets.symmetric(horizontal: 2.w, vertical: 5.h),
                dividerHeight: 0.h,
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorColor: Colors.transparent,
                isScrollable: true,
                unselectedLabelColor: AppColors.black,
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(41.r),
                  color: AppColors.blue_purple, // Set the indicator color
                ),
                labelColor: AppColors.white_color,
                labelStyle: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Inter',
                ),
                tabs: const [
                  Tab(
                    text: 'Monday',
                  ),
                  Tab(
                    text: 'Tuesday',
                  ),
                  Tab(
                    text: 'Wednesday',
                  ),
                  Tab(
                    text: 'Thursday',
                  ),
                  Tab(
                    text: 'Friday',
                  ),
                  Tab(
                    text: 'Saturday',
                  ),
                  Tab(
                    text: 'Sunday',
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  WeeklyMenuWidget(),
                  WeeklyMenuWidget(),
                  WeeklyMenuWidget(),
                  WeeklyMenuWidget(),
                  WeeklyMenuWidget(),
                  WeeklyMenuWidget(),
                  WeeklyMenuWidget(),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
