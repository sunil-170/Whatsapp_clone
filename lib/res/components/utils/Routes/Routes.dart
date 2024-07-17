import 'package:flutter/material.dart';
import 'package:whatsappsaloon/Splash_Screen.dart';
import 'package:whatsappsaloon/View/Account/Account_screen.dart';
import 'package:whatsappsaloon/View/Account/Chat_screen.dart';
import 'package:whatsappsaloon/View/Account/Help_screen.dart';
import 'package:whatsappsaloon/View/Account/Notification_screen.dart';
import 'package:whatsappsaloon/View/Account/Profile_screen.dart';
import 'package:whatsappsaloon/View/Account/Storage_data_screen.dart';
import 'package:whatsappsaloon/View/Auth/Login_page.dart';
import 'package:whatsappsaloon/View/Auth/Otp_screen.dart';
import 'package:whatsappsaloon/View/Home/chat_page.dart';
import 'package:whatsappsaloon/View/OnBoarding/Welcome_screen.dart';
import 'package:whatsappsaloon/View/OnBoarding/onboarding_first_screen.dart';
import 'package:whatsappsaloon/res/components/utils/Routes/Route_names.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.Splash_screen:
        return MaterialPageRoute(
            builder: (BuildContext context) => Onboarding_first_screen());
      case RoutesName.Welcome_screen:
        return MaterialPageRoute(
            builder: (BuildContext context) => Welcome_screen());
      case RoutesName.Login_Page:
        return MaterialPageRoute(
            builder: (BuildContext context) => Login_page());
      case RoutesName.Otp_screen:
        return MaterialPageRoute(
            builder: (BuildContext context) => Otp_screen());
      case RoutesName.Chat_page:
        return MaterialPageRoute(
            builder: (BuildContext context) => Chat_page());
      case RoutesName.Account_screen:
        return MaterialPageRoute(
            builder: (BuildContext context) => Account_screen());
      case RoutesName.Profile_screen:
        return MaterialPageRoute(
            builder: (BuildContext context) => Profile_screen());
      case RoutesName.Chat_screen:
        return MaterialPageRoute(
            builder: (BuildContext context) => Chat_screen());
      case RoutesName.Notification_screen:
        return MaterialPageRoute(
            builder: (BuildContext context) => Notification_screen());
      case RoutesName.Storage_data_screen:
        return MaterialPageRoute(
            builder: (BuildContext context) => Storage_data_screen());
      case RoutesName.Help_screen:
        return MaterialPageRoute(
            builder: (BuildContext context) => Help_screen());

      default:
        return MaterialPageRoute(builder: (_) {
          return Scaffold(
              body: Center(
            child: Text("No  Route Defined"),
          ));
        });
    }
  }
}
