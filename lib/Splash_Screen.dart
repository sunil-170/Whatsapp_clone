import 'dart:async';

import 'package:flutter/material.dart';
import 'package:whatsappsaloon/res/components/App_services.dart';
import 'package:whatsappsaloon/res/components/utils/Routes/Route_names.dart';

class Splash_Screen extends StatefulWidget {
  const Splash_Screen({super.key});

  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {
  @override
  void initState() {
    super.initState();
    Navigatie_home();
  }

  Navigatie_home() {
    Timer(Duration(seconds: 1), () {
      Navigator.of(context).pushNamed(RoutesName.Onboarding_first_screen);
    });
  }

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: Appservices(context).getDeviceheight(),
            width: Appservices(context).getDeviceWidth(),
            decoration: BoxDecoration(
                image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/images/splash_img.png"),
            )),
            child: Image.asset("assets/images/app_logo.png"),
          ),
        ],
      ),
    );
  }
}
