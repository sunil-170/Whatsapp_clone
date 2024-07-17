import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:whatsappsaloon/res/components/App_colors.dart';
import 'package:whatsappsaloon/res/components/Common_textfield.dart';
import 'package:whatsappsaloon/res/components/Style_sheet.dart';
import 'package:whatsappsaloon/res/components/common_button.dart';

class Starred_screen extends StatelessWidget {
  const Starred_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          foregroundColor: AppColors.white,
          title: Text(
            "Starred messages",
            style: FontStyle().fs_20_Bold().copyWith(color: AppColors.white),
          ),
          elevation: 0,
          backgroundColor: AppColors.Dark_green),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 120,
              width: 120,
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: AppColors.Dark_green),
              child: Icon(
                Icons.star_border_outlined,
                color: AppColors.white,
                size: 60,
              ),
            ),
            Gap(25),
            Text(
              "Tap and hold on any message in any chat to star it, so you can easily find it later.",
              textAlign: TextAlign.center,
              style: FontStyle().fs_16_Regular(),
            ),
          ],
        ),
      ),
    );
  }
}
