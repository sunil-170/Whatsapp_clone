import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:whatsappsaloon/res/components/App_colors.dart';
import 'package:whatsappsaloon/res/components/Style_sheet.dart';
import 'package:whatsappsaloon/res/components/common_button.dart';
import 'package:whatsappsaloon/res/components/utils/Routes/Route_names.dart';

class Welcome_screen extends StatelessWidget {
  const Welcome_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Welcome To WhatsApp",
            style: FontStyle().fs_32_Bold(),
          ),
          Gap(30),
          Image.asset("assets/images/code_img.png"),
          Gap(30),
          Text(
              "Read our Privacy Policy. Tap “Agree and continue” to accept the Teams of Service."),
          Gap(30),
          Common_Button(
              bg_clr: AppColors.green,
              btn_name: "AGREE AND CONTINUE",
              onPressed: () {
                Navigator.of(context).pushNamed(RoutesName.Login_Page);
              }),
          Gap(60),
          Text("from"),
          Text(
            "FACEBOOK",
            style: FontStyle().fs_16_Regular(),
          )
        ],
      )),
    );
  }
}
