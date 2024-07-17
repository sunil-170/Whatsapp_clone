import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:whatsappsaloon/res/components/App_colors.dart';
import 'package:whatsappsaloon/res/components/Common_textfield.dart';
import 'package:whatsappsaloon/res/components/Style_sheet.dart';
import 'package:whatsappsaloon/res/components/common_button.dart';

class Linked_Device_screen extends StatelessWidget {
  const Linked_Device_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          foregroundColor: AppColors.white,
          title: Text(
            "Linked devices",
            style: FontStyle().fs_20_Bold().copyWith(color: AppColors.white),
          ),
          elevation: 0,
          backgroundColor: AppColors.Dark_green),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Image.asset("assets/images/link_device.png"),
            Text(
              "Use WhatsAPP on other devices",
              textAlign: TextAlign.center,
              style: FontStyle().fs_32_Bold(),
            ),
            Gap(20),
            Common_Button(
                btn_name: "LINK A DEVICE",
                bg_clr: AppColors.Dark_green,
                onPressed: () {}),
            Gap(20),
            Divider(
              thickness: 10,
              color: AppColors.grey,
            ),
            Gap(20),
            Common_listtile(
              onPressed: () {},
              icon: Icon(Icons.filter_alt_sharp),
              iconcolor: AppColors.Dark_green,
              title: "Multi-device beta",
              textstyle: FontStyle().fs_14_Bold(),
              subtitle:
                  "Use up to 4 devices without keeping your phone online. Tap to learn more.",
              textstyle1: FontStyle().fs_12_Regular(),
            )
          ],
        ),
      ),
    );
  }
}
