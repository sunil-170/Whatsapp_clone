import 'package:flutter/material.dart';
import 'package:whatsappsaloon/res/components/App_colors.dart';
import 'package:whatsappsaloon/res/components/Style_sheet.dart';
import 'package:whatsappsaloon/res/components/dummy_data.dart';

class Account_screen extends StatelessWidget {
  const Account_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          foregroundColor: AppColors.white,
          title: Text(
            "Account",
            style: FontStyle().fs_20_Bold().copyWith(color: AppColors.white),
          ),
          elevation: 0,
          backgroundColor: AppColors.Dark_green),
      body: Column(
        children: [
          ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: Fix_data.Account_data.length,
              itemBuilder: (context, index) {
                return ListTile(
                  onTap: () {},
                  leading: Icon(Fix_data.Account_data[index]["icon"]),
                  title: Text(Fix_data.Account_data[index]["title"]),
                );
              }),
        ],
      ),
    );
  }
}
