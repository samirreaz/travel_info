import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'account_controller.dart';
import 'package:url_launcher/url_launcher.dart';

class AccountPage extends GetView<AccountController> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text('Contact Us'),
        ),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                foregroundImage: AssetImage('assets/images/Mainur.jpeg'),
                radius: ScreenUtil().setWidth(100),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(20),
              ),
              Text(
                controller.name,
                style: TextStyle(
                  fontSize: 20.w,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(10),
              ),
              TextButton(
                onPressed: () async {
                  final url = 'tel:${controller.phone}';
                  final Uri _url = Uri.parse(url);
                  if (await launchUrl(_url)) {
                    await launchUrl(_url);
                  }
                },
                child: Text(
                  'Phone: ${controller.phone}',
                  style: TextStyle(
                    fontSize: 15.w,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              TextButton(
                onPressed: () async {
                  final url = 'mailto:${controller.email}';
                  final Uri _url = Uri.parse(url);
                  if (await launchUrl(_url)) {
                    await launchUrl(_url);
                  }
                },
                child: Text('E-mail: ${controller.email}',
                    style: TextStyle(
                      fontSize: 15.w,
                      fontWeight: FontWeight.w400,
                    )),
              ),
            ],
          ),
        ));
  }
}
