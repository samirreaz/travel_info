import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_info/models/bus_model.dart';
import 'package:travel_info/pages/details/details_controller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailsPage extends GetView<DetailsController> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Details'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image(
              image: AssetImage(controller.data.image),
            ),
            Padding(
              padding: EdgeInsets.all(10.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        Text(
                          controller.data.name,
                          style: TextStyle(
                            fontSize: ScreenUtil().setSp(25.w),
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        Text(controller.data.places.first +
                            '--' +
                            controller.data.places.last),
                      ],
                    ),
                  ),
                  Divider(),
                  Text(
                    'Bus Stops:',
                    style: TextStyle(
                      fontSize: ScreenUtil().setSp(16.w),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    controller.data.description,
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: ScreenUtil().setSp(16.w),
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  /*  
                  Divider(),
                  SizedBox(
                    height: 300.h,
                    child: ListView(
                      children: [
                        for (var item in controller.data.places)
                          Card(
                            child: ListTile(
                              title: Text(item),
                            ),
                          ),
                      ],
                    ),
                  ),
                 */
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
