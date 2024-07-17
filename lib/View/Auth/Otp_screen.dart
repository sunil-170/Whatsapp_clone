import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pinput/pinput.dart';
import 'package:whatsappsaloon/res/components/App_colors.dart';
import 'package:whatsappsaloon/res/components/Style_sheet.dart';
import 'package:whatsappsaloon/res/components/common_button.dart';
import 'package:whatsappsaloon/res/components/utils/Routes/Route_names.dart';

class Otp_screen extends StatelessWidget {
  const Otp_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Common_Button(
            btn_name: "Verify",
            bg_clr: AppColors.black,
            onPressed: () {
              Navigator.of(context).pushNamed(RoutesName.Chat_page);
            }),
      ),
      appBar: AppBar(
          foregroundColor: AppColors.black,
          title: Text(
            "Enter OTP Code",
            style: FontStyle().fs_20_Bold(),
          ),
          elevation: 0,
          backgroundColor: Colors.transparent),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Code has been sent to 98125***555"),
            Gap(20),
            Pinput(
              defaultPinTheme: PinTheme(
                  height: 68,
                  width: 80,
                  decoration: BoxDecoration(
                      border: Border.all(color: AppColors.black),
                      borderRadius: BorderRadius.circular(20))),
              validator: (value) {
                return value == "4444" ? null : "Invalid Otp";
              },
            ),
            Gap(20),
            Text("Resend Code in 56s"),
          ],
        ),
      ),
    );
  }
}
