import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:whatsappsaloon/View/Account/Manage_storage_screen.dart';
import 'package:whatsappsaloon/res/components/App_colors.dart';
import 'package:whatsappsaloon/res/components/Common_textfield.dart';
import 'package:whatsappsaloon/res/components/Style_sheet.dart';

class Storage_data_screen extends StatefulWidget {
  const Storage_data_screen({super.key});

  @override
  State<Storage_data_screen> createState() => _Storage_data_screenState();
}

class _Storage_data_screenState extends State<Storage_data_screen>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          foregroundColor: AppColors.white,
          title: Text(
            "Storage and data",
            style: FontStyle().fs_20_Bold().copyWith(color: AppColors.white),
          ),
          elevation: 0,
          backgroundColor: AppColors.Dark_green),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Common_listtile(
                icon: Icon(Icons.folder),
                title: "Manage storage",
                subtitle: "3.1 MB",
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Manage_storage_screen(),
                  ));
                }),
            Divider(
              thickness: 2,
            ),
            Common_listtile(
                icon: Icon(Icons.settings_backup_restore_outlined),
                title: "Network usage",
                subtitle: "6.1 MB sent  69.2 MB received",
                onPressed: () {}),
            Common_switch_tile(
              title: "Use less data for calls",
              boolvalue: false,
            ),
            Divider(
              thickness: 2,
            ),
            Text("Media auto-download"),
            Gap(10),
            Text("Voice messages are always automatically downloaded"),
            Common_listtile(
                title: "When using mobile data",
                subtitle: "Photos",
                onPressed: () {}),
            Common_listtile(
                title: "When connected on Wi-Fi",
                subtitle: "All media",
                onPressed: () {}),
            Common_listtile(
                title: "When roaming", subtitle: "No media", onPressed: () {}),
            Divider(
              thickness: 2,
            ),
            Text("Media upload quality"),
            Gap(10),
            Text("Choose the quality of media files to be sent"),
            Common_listtile(
                title: "Photo upload quality",
                subtitle: "Auto (recommended)",
                onPressed: () {})
          ],
        ),
      )),
    );
  }
}
