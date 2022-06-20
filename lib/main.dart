import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:travel_info/routs/app_pages.dart';
import 'package:travel_info/routs/app_routes.dart';

bool isFirstTime = true;
void main() async {
  WidgetsFlutterBinding();
  final prefs = await SharedPreferences.getInstance();
  isFirstTime = prefs.getBool('ON_BOARDING') ?? true;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your .
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      builder: () => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        themeMode: ThemeMode.system,
        theme: FlexColorScheme.light(scheme: FlexScheme.espresso).toTheme,
        darkTheme: FlexColorScheme.dark(scheme: FlexScheme.espresso).toTheme,
        initialRoute: isFirstTime ? AppRoutes.ONBOARDING : AppRoutes.LANDING,
        getPages: AppPage.list,
      ),
    );
  }
}
