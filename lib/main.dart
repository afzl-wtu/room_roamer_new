import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:room_roamer_new/Screens/Splash_screen.dart';
import 'package:room_roamer_new/utils/AppColors.dart';

void main() async {
  await ScreenUtil.ensureScreenSize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: AppColors.blue_purple
            // Change the color to your desired color
            ));
    return ScreenUtilInit(
        designSize: const Size(428, 926),
        minTextAdapt: true,
        splitScreenMode: true,
        // Use builder only if you need to use the library outside ScreenUtilInit context
        builder: (_, child) {
          return MaterialApp(
            //theme: ThemeData(primaryColor: Colors.white,textTheme:TextTheme() ),
            debugShowCheckedModeBanner: false,
            title: 'First Method',
            home: child,
          );
        },
        child: const SplashScreen());
  }
}
