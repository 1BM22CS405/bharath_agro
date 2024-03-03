import 'package:flutter/material.dart';
import 'package:bharath_s_application14/presentation/crop_analysis_screen/crop_analysis_screen.dart';
import 'package:bharath_s_application14/presentation/sensors_screen/sensors_screen.dart';
import 'package:bharath_s_application14/presentation/consumer_view_screen/consumer_view_screen.dart';
import 'package:bharath_s_application14/presentation/profile_farmer_screen/profile_farmer_screen.dart';
import 'package:bharath_s_application14/presentation/sign_up_page_screen/sign_up_page_screen.dart';
import 'package:bharath_s_application14/presentation/rent_screen/rent_screen.dart';
import 'package:bharath_s_application14/presentation/landing_page_screen/landing_page_screen.dart';
import 'package:bharath_s_application14/presentation/login_page_screen/login_page_screen.dart';
import 'package:bharath_s_application14/presentation/sign_up_page_one_screen/sign_up_page_one_screen.dart';
import 'package:bharath_s_application14/presentation/home_page_screen/home_page_screen.dart';
import 'package:bharath_s_application14/presentation/crop_details_farmer_view_screen/crop_details_farmer_view_screen.dart';
import 'package:bharath_s_application14/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String cropAnalysisScreen = '/crop_analysis_screen';

  static const String sensorsScreen = '/sensors_screen';

  static const String consumerViewScreen = '/consumer_view_screen';

  static const String profileFarmerScreen = '/profile_farmer_screen';

  static const String signUpPageScreen = '/sign_up_page_screen';

  static const String rentScreen = '/rent_screen';

  static const String landingPageScreen = '/landing_page_screen';

  static const String loginPageScreen = '/login_page_screen';

  static const String signUpPageOneScreen = '/sign_up_page_one_screen';

  static const String homePageScreen = '/home_page_screen';

  static const String cropDetailsFarmerViewScreen =
      '/crop_details_farmer_view_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    cropAnalysisScreen: (context) => CropAnalysisScreen(),
    sensorsScreen: (context) => SensorsScreen(),
    consumerViewScreen: (context) => ConsumerViewScreen(),
    profileFarmerScreen: (context) => ProfileFarmerScreen(),
    signUpPageScreen: (context) => SignUpPageScreen(),
    rentScreen: (context) => RentScreen(),
    landingPageScreen: (context) => LandingPageScreen(),
    loginPageScreen: (context) => LoginPageScreen(),
    signUpPageOneScreen: (context) => SignUpPageOneScreen(),
    homePageScreen: (context) => HomePageScreen(),
    cropDetailsFarmerViewScreen: (context) => CropDetailsFarmerViewScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
