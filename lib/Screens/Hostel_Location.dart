import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:room_roamer_new/Widgets/Custom_elevated_button.dart';
import 'package:room_roamer_new/utils/AppColors.dart';

class HostelLocationScreen extends StatefulWidget {
  const HostelLocationScreen({super.key});

  @override
  State<HostelLocationScreen> createState() => _HostelLocationScreenState();
}

class _HostelLocationScreenState extends State<HostelLocationScreen> {
  static const LatLng _pGooglePlex = LatLng(33.6518, 73.0806);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(bottom: 20.h),
        child: Column(
          children: [
            Stack(
              children: <Widget>[
                SizedBox(
                  height: 820.h,
                  child: const GoogleMap(
                    initialCameraPosition: CameraPosition(
                      target: _pGooglePlex,
                      zoom: 13,
                    ),
                    myLocationEnabled: true,
                    myLocationButtonEnabled: true,
                    mapType: MapType.normal,
                    zoomControlsEnabled: true,
                    // Other map properties
                  ),
                ),
                Positioned(
                  top: 0.h,
                  left: 0.w,
                  right: 0.w,
                  child: AppBar(
                    title: Padding(
                      padding: EdgeInsets.only(left: 40.w),
                      child: Text(
                        'Hostel Location',
                        style: TextStyle(
                            color: AppColors.black,
                            fontFamily: "Urbanist",
                            fontWeight: FontWeight.w600,
                            fontSize: 24.sp),
                      ),
                    ),
                    backgroundColor: Colors.transparent,
                    elevation: 0.0,
                  ),
                ),
              ],
            ),
            const Spacer(),
            CustomElevatedButton(
                text: "See Live Location ", onPressed: () {}, width: 400.w)
          ],
        ),
      ),
    );
  }
}
