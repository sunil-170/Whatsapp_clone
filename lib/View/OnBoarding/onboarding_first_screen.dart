import 'dart:async';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:whatsappsaloon/res/components/App_colors.dart';
import 'package:whatsappsaloon/res/components/App_services.dart';
import 'package:whatsappsaloon/res/components/Style_sheet.dart';
import 'package:whatsappsaloon/res/components/utils/Routes/Route_names.dart';

class Onboarding_first_screen extends StatefulWidget {
  const Onboarding_first_screen({super.key});

  @override
  State<Onboarding_first_screen> createState() =>
      _Onboarding_first_screenState();
}

class _Onboarding_first_screenState extends State<Onboarding_first_screen> {
  @override
  void initState() {
    super.initState();
    Navigatie_home1();
  }

  Navigatie_home1() {
    Timer(Duration(seconds: 5), () {
      Navigator.of(context).pushNamed(RoutesName.Welcome_screen);
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/app_logo.png",
                  scale: 2,
                ),
                Gap(20),
                Text(
                  "WhatsApp",
                  style: FontStyle().fs_32_Bold(),
                ),
                CircularProgressIndicator(
                  color: AppColors.green,
                ),
                Text(
                  "Loading...",
                  style:
                      FontStyle().fs_20_Bold().copyWith(color: AppColors.green),
                )
              ],
            ),
          ),
        ],
      ),
    );
    ;
  }
}
