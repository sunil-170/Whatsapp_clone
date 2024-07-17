import 'package:flutter/material.dart';
import 'package:whatsappsaloon/res/components/App_colors.dart';
import 'package:whatsappsaloon/res/components/Common_textfield.dart';
import 'package:whatsappsaloon/res/components/Style_sheet.dart';

class Help_screen extends StatelessWidget {
  const Help_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          foregroundColor: AppColors.white,
          title: Text(
            "Help",
            style: FontStyle().fs_20_Bold().copyWith(color: AppColors.white),
          ),
          elevation: 0,
          backgroundColor: AppColors.Dark_green),
      body: SafeArea(
          child: Column(
        children: [
          Common_listtile(
              icon: Icon(Icons.help), title: 'Help Centre', onPressed: () {}),
          Common_listtile(
              icon: Icon(Icons.people),
              title: 'Contact us',
              subtitle: "Questions? Need help?",
              onPressed: () {}),
          Common_listtile(
              icon: Icon(Icons.edit_document),
              title: 'Terms and Privacy Policy',
              onPressed: () {}),
          Common_listtile(
              icon: Icon(Icons.info_outline),
              title: 'App info',
              onPressed: () {}),
        ],
      )),
    );
  }
}
