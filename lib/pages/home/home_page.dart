

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_info/models/bus_model.dart';
import 'package:travel_info/pages/details/details_page.dart';
import 'package:travel_info/routs/app_routes.dart';
import 'home_controller.dart';

class HomePage extends GetView<HomeController> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  //var _controllerFrom = TextEditingController();
  //var _controllerTo = TextEditingController();
  TextEditingController xContrller = TextEditingController();

  String _from = '';
  String _to = '';
  //List getBusList = [];
  static List<Bus> getBusList = [];
  static const List<String> _kOptions = <String>[
    'Fulbaria',
    'Golap Shah Mazar',
    'GPO',
    'Paltan',
    'Press Club',
    'Shahbag',
    'Bangla Motor',
    'Kawran Bazar',
    'Farmgate',
    'Bijoy Sarani',
    'Jahangir Gate',
    'Mohakhali',
    'Chairman Bari',
    'Sainik Club',
    'Banani',
    'Kakali',
    'Kuril Bishwa Road',
    'Khilkhet',
    'Airport',
    'Jashimuddin',
    'Azampur',
    'House Building',
    'Abdullahpur',
    'Mirpur 14',
    'Mirpur 10',
    'Mirpur 2',
    'Sony Cinema Hall',
    'Mirpur 1',
    'Mazar Road',
    'Konabari',
    'Rupnagar',
    'Beribadh',
    'Birulia',
    'Ashulia',
    'Zirabo',
    'Fantasy Kingdom',
    'Nandan Park',
    'Mirpur 1',
    'Ansar Camp',
    'Technical',
    'Kallyanpur',
    'Shyamoli',
    'Shishu Mela',
    'College Gate',
    'Asad Gate',
    'Dhanmondi 27',
    'Dhanmondi 32',
    'Kalabagan',
    'Science Lab',
    'Bata Signal',
    'Shahbag',
    'Matsya Bhaban',
    'High Court',
    'Press Club Paltan',
    'Motijheel',
    'Sayedabad',
    'Janapath Moor',
    'Jatrabari',
    'Gabtoli',
    'Technical',
    'Kallyanpur',
    'Shyamoli',
    'Shishu Mela',
    'College Gate',
    'Asad Gate',
    'Dhanmondi 27',
    'Dhanmondi 32',
    'Kalabagan',
    'Science Lab',
    'Katabon',
    'Shahbag',
    'High Court',
    'Naya Bazar',
    'Ray Saheb Bazar',
    'Sadarghat',
    'College Gate',
    'Shishu Mela',
    'Shyamoli',
    'Kallyanpur',
    'Darussalam',
    'Technical',
    'Bangla College',
    'Tolarbag',
    'Ansar Camp',
    'Mirpur 1',
    'Sony Cinema Hall',
    'Mirpur 2',
    'Proshika Moor',
    'Pallabi',
    'Mirpur 12',
    'Jatrabari',
    'Janapath Moor',
    'Sayedabad',
    'Motijheel',
    'Dainik Bangla Moor',
    'Press Club',
    'Matsya Bhaban',
    'High Court',
    'Shahbag',
    'Bangla Motor',
    'Kawran Bazar',
    'Farmgate',
    'Khamar Bari',
    'Asad Gate',
    'College Gate',
    'Shishu Mela',
    'Shyamoli',
    'Kallyanpur',
    'Technical',
    'Gabtoli',
    'Chiriyakhana',
    'Mirpur 1',
    'Khamar Bari',
    'Farmgate',
    'Press Club',
    'Motijheel',
    'Mirpur 14',
    'Mirpur 10',
    'Mirpur 2',
    'Sony Cinema Hall',
    'Mirpur 1',
    'Mazar Road',
    'Konabari',
    'Rupnagar',
    'Beribadh',
    'Birulia',
    'Ashulia',
    'Zirabo',
    'Fantasy Kingdom',
    'Nandan Park',
    'Fulbaria',
    'Golap Shah Mazar',
    'Press Club',
    'Shahbag',
    'Bangla Motor',
    'Kawran Bazar',
    'Farmgate',
    'Bijoy Sarani',
    'Jahangir Gate',
    'Mohakhali',
    'Chairman Bari',
    'Sainik Club',
    'Banani',
    'Kakali',
    'Kuril Bishwa Road',
    'Khilkhet',
    'Airport',
    'Jashimuddin',
    'Azampur',
    'House Building',
    'Abdullahpur',
    'Mirpur 1',
    'Ansar Camp',
    'Technical',
    'Kallyanpur',
    'Shyamoli',
    'Shishu Mela',
    'College Gate',
    'Asad Gate',
    'Dhanmondi 27',
    'Dhanmondi 32',
    'Kalabagan',
    'Science Lab',
    'Bata Signal',
    'Shahbag',
    'Matsya Bhaban',
    'Gulistan',
    'Motijheel',
    'Sayedabad',
    'Janapath Moor',
    'Jatrabari',
    'Kadamtali',
    'Keraniganj',
    'Babubazar',
    'Naya Baza',
    'Golap Shah Mazar',
    'Kakrail',
    'Shantinagar',
    'Malibagh Moor',
    'Mouchak',
    'Malibagh Railgate',
    'Hazipara',
    'Rampura Bazar',
    'Merul',
    'Badda',
    'Shahjadpur',
    'Bashtola',
    'Notun Bazar',
    'Nadda',
    'Bashundhara',
    'Jamuna Future Park',
    'Kuril Bishwa Road',
    'Khilkhet',
    'Airport',
    'Jashimuddin',
    'Rajlakshmi',
    'Azampur',
    'House Building',
    'Abdullahpur',
    'Tongi',
    'Kamalapur',
    'Motijheel',
    'Kakrail',
    'Shantinagar',
    'Malibagh Moor',
    'Mouchak',
    'Mogbazar',
    'Kawran Bazar',
    'Farmgate',
    'Jahangir Gate',
    'Bijoy Sarani',
    'Mohakhali',
    'Gulshan 1',
    'Gulshan 2',
    'Notun Bazar',
    'Postogola',
    'Dholairpar',
    'Jatrabari',
    'Janapath Moor',
    'Sayedabad',
    'Mugdapara',
    'Bashabo',
    'Khilgaon',
    'Malibagh Railgate',
    'Rampura Bazar',
    'Rampura Bridge',
    'Merul',
    'Badda',
    'Uttar BaddaUttar Badda',
    'Bashtola',
    'Notun Bazar',
    'Nadda',
    'Bashundhara',
    'Jamuna Future Park',
    'Jamuna Future Park',
    'Kuril Chourasta',
    'Kuril Bishwa Road',
    'Khilkhet',
    'Airport',
    'Jashimuddin',
    'Rajlakshmi',
    'Azampur',
    'House Building',
    'Dia Bari',
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(controller.title),
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              //Get.toNamed('/search');
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10.h,
              ),
              Text(
                'Select Place',
                style: TextStyle(
                  fontSize: ScreenUtil().setSp(16.w),
                  fontWeight: FontWeight.bold,
                ),
              ),
              Card(
                child: Padding(
                  padding: EdgeInsets.all(8.w),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Autocomplete<String>(
                          optionsBuilder: (TextEditingValue textEditingValue) {
                            if (textEditingValue.text == '') {
                              return const Iterable<String>.empty();
                            }
                            return _kOptions.where((String option) {
                              String input = option.toLowerCase();
                              return input.contains(
                                  textEditingValue.text.toLowerCase());
                            });
                          },
                          onSelected: (String selection) {
                            debugPrint('You just selected $selection');
                            _from = selection;
                          },
                          fieldViewBuilder: (context, controller, focusNode,
                              onEdtingcomplete) {
                            return TextFormField(
                              controller: controller,
                              focusNode: focusNode,
                              onEditingComplete: onEdtingcomplete,
                              decoration: InputDecoration(
                                labelText: 'From',
                                border: OutlineInputBorder(),
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter Place';
                                }
                                return null;
                              },
                            );
                          },
                        ),
                        /* TextFormField(
                          controller: _controllerFrom,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter Place';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            labelText: 'From',
                            hintText: 'Enter City',
                            labelStyle: TextStyle(
                              fontSize: ScreenUtil().setSp(16.w),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.w),
                            ),
                          ),
                        ), */
                        SizedBox(
                          height: 10.w,
                        ),
                        Autocomplete<String>(
                          optionsBuilder: (TextEditingValue textEditingValue) {
                            if (textEditingValue.text == '') {
                              return const Iterable<String>.empty();
                            }
                            return _kOptions.where((String option) {
                              String input = option.toLowerCase();
                              return input.contains(
                                  textEditingValue.text.toLowerCase());
                            });
                          },
                          onSelected: (String selection) {
                            debugPrint('You just selected $selection');
                            _to = selection;
                          },
                          fieldViewBuilder: (context, controller, focusNode,
                              onEdtingcomplete) {
                            return TextFormField(
                              controller: controller,
                              focusNode: focusNode,
                              onEditingComplete: onEdtingcomplete,
                              decoration: InputDecoration(
                                labelText: 'To',
                                border: OutlineInputBorder(),
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter Place';
                                }
                                return null;
                              },
                            );
                          },
                        ),
                        /* TextFormField(
                          controller: _controllerTo,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter Place';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            labelText: 'To',
                            hintText: 'Enter City',
                            labelStyle: TextStyle(
                              fontSize: ScreenUtil().setSp(16.w),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.w),
                            ),
                          ),
                        ), */
                        SizedBox(
                          height: 10.w,
                        ),
                        SizedBox(
                          width: double.maxFinite,
                          height: 40.h,
                          child: ElevatedButton.icon(
                            onPressed: () async {
                              debugPrint('_From: ${_from}');
                              if (_formKey.currentState!.validate()) {
                                if (_from.toLowerCase() == _to.toLowerCase()) {
                                  showDialog(
                                      context: context,
                                      builder: (context) => AlertDialog(
                                            title: const Text(
                                                'From and To are same'),
                                            content: Text(
                                              'You are selected same Place. Please select different place',
                                            ),
                                            actions: [
                                              TextButton(
                                                onPressed: () {
                                                  Get.back();
                                                },
                                                child: Text('Ok'),
                                              ),
                                            ],
                                          ));
                                } else {
                                  for (int i = 0; i < buses.length; i++) {
                                    debugPrint("-->" + buses[i].name);
                                    for (int j = 0;
                                        j < buses[i].places.length;
                                        j++) {
                                      //debugPrint(buses[i].places[j]);

                                      if (buses[i].places[j].toLowerCase() ==
                                          _from.trim().toLowerCase()) {
                                        //debugPrint(buses[i].places[j]);
                                        for (int x = 0;
                                            x < buses[i].places.length;
                                            x++) {
                                          if (buses[i]
                                                  .places[x]
                                                  .toLowerCase() ==
                                              _to.trim().toLowerCase()) {
                                            debugPrint(
                                                '${buses[i].name + '-->yes found'}');
                                            //debugPrint('yes');
                                            getBusList.add(buses[i]);
                                            debugPrint(
                                                getBusList.length.toString());
                                          }
                                        }
                                      }
                                    }
                                  }
                                  debugPrint('Number of Bus' +
                                      getBusList.length.toString());
                                  Get.toNamed(AppRoutes.RESULT,
                                      arguments: getBusList);
                                  //getBusList.clear();
                                }
                              }
                              // it's for delete the data from list
                              /* Future.delayed(Duration(seconds: 1), () {
                                getBusList.clear();
                              }); */
                            },
                            icon: Icon(Icons.search),
                            label: Text('Search',
                                style: TextStyle(
                                  fontSize: ScreenUtil().setSp(16.w),
                                )),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.w,
              ),
              /* Text('Suggedted Routes',
                  style: TextStyle(
                    fontSize: ScreenUtil().setSp(16.w),
                    fontWeight: FontWeight.bold,
                  )),
              Card(
                child: Container(
                  height: 300.h,
                  child: Builder(builder: (context) {
                    Future.delayed(Duration(seconds: 2), () {});
                    return ListView.builder(
                      itemCount: buses.length,
                      itemBuilder: (context, index) => ListTile(
                        title: Text(buses[index].name),
                      ),
                    );
                  }),
                ),
              ), */
            ],
          ),
        ),
      ),
    );
  }
}
