import 'package:flutter/material.dart';
import 'package:whatsappsaloon/res/components/utils/Routes/Route_names.dart';

class App_Function {
  Route_function(int index, BuildContext context) {
    switch (index) {
      case 0:
        return Navigator.pushNamed(context, RoutesName.Account_screen);
      case 1:
        return Navigator.pushNamed(context, RoutesName.Chat_screen);
      case 2:
        return Navigator.pushNamed(context, RoutesName.Notification_screen);
      case 3:
        return Navigator.pushNamed(context, RoutesName.Storage_data_screen);
      case 4:
        return Navigator.pushNamed(context, RoutesName.Help_screen);

      default:
    }
  }
}
