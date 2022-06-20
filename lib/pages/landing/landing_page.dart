import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_info/models/bus_model.dart';
import 'package:travel_info/pages/details/details_page.dart';
import 'package:travel_info/pages/landing/landing_controller.dart';
import 'package:travel_info/pages/readme/readme_page.dart';
import 'package:travel_info/routs/app_pages.dart';
import 'package:travel_info/routs/app_routes.dart';

class LandingPage extends GetView<LandingController> {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 80.h,
          ),
          Text(
            'Wellcome to Travel Info',
            style: TextStyle(
              fontSize: ScreenUtil().setSp(25.w),
              fontWeight: FontWeight.w900,
            ),
          ),
          SizedBox(
            height: ScreenUtil().setHeight(10),
          ),
          Padding(
            padding:
                EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(50.w)),
            child: Text(
              'This app is made for travelers to Dhaka. You can use this app for make easier to go your destinations bus stop.',
              style: TextStyle(
                fontSize: ScreenUtil().setSp(14.w),
                fontWeight: FontWeight.w500,
                color: Colors.grey,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 60.h,
          ),
          InkWell(
            onTap: () {
              Get.toNamed(AppRoutes.HOME);
            },
            child: Card(
              elevation: 10,
              child: Container(
                height: ScreenUtil().setHeight(100.h),
                width: ScreenUtil().setWidth(260.w),
                color: Colors.blue,
                child: Center(
                  child: Text(
                    'Dhaka City Bus Routes',
                    style: TextStyle(
                      fontSize: ScreenUtil().setSp(25.w),
                      fontWeight: FontWeight.w900,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20.h,
            width: double.maxFinite,
          ),
          SizedBox(
            width: ScreenUtil().setWidth(270.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: ((context) => ReadmePage())));
                  },
                  child: Card(
                    clipBehavior: Clip.antiAlias,
                    elevation: 10,
                    child: Container(
                      width: ScreenUtil().setWidth(120.w),
                      height: ScreenUtil().setHeight(100.h),
                      color: Colors.greenAccent,
                      child: Center(
                        child: Text(
                          'Read Me',
                          style: TextStyle(
                            fontSize: ScreenUtil().setSp(25.w),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Get.toNamed(AppRoutes.ACCOUNT);
                  },
                  child: Card(
                    elevation: 10,
                    child: Container(
                      width: ScreenUtil().setWidth(120.w),
                      height: ScreenUtil().setHeight(100.h),
                      color: Colors.purpleAccent,
                      child: Center(
                        child: Text(
                          'Contact Us',
                          style: TextStyle(
                            fontSize: ScreenUtil().setSp(25.w),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}
