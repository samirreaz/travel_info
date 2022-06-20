import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:travel_info/pages/onboarding/onboarding_controller.dart';
import 'package:travel_info/routs/app_routes.dart';

class OnboardingPage extends GetView<OnboardingContoller> {
  @override
  Widget build(BuildContext context) {
    var brightness = MediaQuery.of(context).platformBrightness;
    bool isDarkMode = brightness == Brightness.dark;
    return Scaffold(
      body: IntroductionScreen(
        pages: [
          PageViewModel(
            title: "Welcome to Travel Info",
            body:
                "This is a simple app to help you find the best places to travel.",
            image: Image.asset(
              "assets/images/bus.png",
              color: isDarkMode == true ? Colors.white : Colors.black,
            ),
          ),
          PageViewModel(
            title: "Search for places",
            body: "Search for places by name, type, or location.",
            image: Center(
              child: Image.asset(
                "assets/images/search.png",
                color: isDarkMode == true ? Colors.white : Colors.black,
              ),
            ),
          ),
          PageViewModel(
            title: "Get the best bus",
            body:
                "Get the best bus for your trip. with picture and route details.",
            image: Center(
              child: Image.asset(
                "assets/images/bus.png",
                color: isDarkMode == true ? Colors.white : Colors.black,
              ),
            ),
          )
        ],
        showDoneButton: true,
        done: const Text("Done"),
        onDone: () => _onIntroEnd(context),
        showNextButton: true,
        next: const Icon(Icons.arrow_forward),
        showSkipButton: true,
        skip: const Text("Skip"),
      ),
    );
  }
}

void _onIntroEnd(context) async {
  //! if we install this app first time then we will set the flag to true
  //! and we will not show the intro screen again
  final prefs = await SharedPreferences.getInstance();
  await prefs.setBool('ON_BOARDING', false);

  /* Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => HomeScreen(),
      ),
    ); */
  Get.offAllNamed(AppRoutes.LANDING);
}
