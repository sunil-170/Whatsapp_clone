import 'dart:async';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:whatsappsaloon/controllers/firebase_controller.dart';
import 'package:whatsappsaloon/res/components/App_colors.dart';
import 'package:whatsappsaloon/res/components/Style_sheet.dart';
import 'package:whatsappsaloon/res/components/common_button.dart';
import 'package:whatsappsaloon/res/components/utils/Routes/Route_names.dart';

class Login_page extends StatelessWidget {
  Login_page({super.key});

  final phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Enter your phone number"),
                Icon(Icons.more_vert_sharp)
              ],
            ),
            Gap(20),
            Text(
                "WhatsApp will need to verify your phone number. What’s my number?"),
            Gap(20),
            IntlPhoneField(
                controller: phoneController,
                decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: AppColors.red)),
                    errorBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: AppColors.green)),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: AppColors.green)))),
            Text(" Carrier charges may apply"),
            Gap(100),
            Common_Button(
                width: 70,
                bg_clr: AppColors.green,
                btn_name: "Next",
                textstyle: FontStyle().fs_14_Regular(),
                onPressed: () async {
                  FirebaseAuthController().sendOtp(phoneController.text.trim());
                  // DatabaseController().addData();
                  Navigator.of(context).pushNamed(RoutesName.Otp_screen);
                }),
          ],
        ),
      )),
    );
  }
}
