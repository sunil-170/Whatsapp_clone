import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:whatsappsaloon/res/components/App_colors.dart';
import 'package:whatsappsaloon/res/components/Style_sheet.dart';
import 'package:whatsappsaloon/res/components/common_button.dart';

class New_payment_screen extends StatelessWidget {
  const New_payment_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return Scaffold(
          body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text("Payments", style: FontStyle().fs_16_Bold()),
              Gap(20),
              Image.asset("assets/images/new_payment_img.png"),
              Gap(20),
              Text(
                "Send and recieve money securely, right where you chat",
                textAlign: TextAlign.center,
                style: FontStyle().fs_20_Bold(),
              ),
              Gap(30),
              Row(
                children: [
                  Icon(
                    Icons.people,
                    color: AppColors.Dark_green,
                  ),
                  Gap(20),
                  Text(
                    "Crores of people are already using payments on\n whatsApp.",
                    style: FontStyle().fs_14_Regular(),
                  )
                ],
              ),
              Gap(200),
              Common_Button(
                  btn_name: "Continue",
                  bg_clr: AppColors.Dark_green,
                  onPressed: () {}),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Image.asset("assets/images/bharat_img.png"),
                Image.asset("assets/images/upi_img.png"),
              ])
            ],
          ),
        ),
      ));
    });
  }
}
