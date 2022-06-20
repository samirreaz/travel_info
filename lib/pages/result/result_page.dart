import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_info/pages/result/result_controller.dart';
import 'package:travel_info/routs/app_routes.dart';

class ResultPage extends GetView<ResultConller> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Result'),
      ),
      body: controller.filterBus.length == 0
          ? Center(
              child: Text('No Bus route Available'),
            )
          : ListView.builder(
              itemCount: controller.filterBus.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(
                        controller.filterBus[index].image,
                      ),
                      maxRadius: ScreenUtil().setWidth(30),
                    ),
                    title: Text(controller.filterBus[index].name),
                    subtitle: Text(controller.filterBus[index].places.first +
                        '--' +
                        controller.filterBus[index].places.last),
                    onTap: () {
                      Get.toNamed(AppRoutes.DETAILS,
                          arguments: controller.filterBus[index]);
                    },
                  ),
                );
              },
            ),
    );
  }
}
