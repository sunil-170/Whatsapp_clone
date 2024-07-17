import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:whatsappsaloon/res/components/App_colors.dart';
import 'package:whatsappsaloon/res/components/Common_textfield.dart';
import 'package:whatsappsaloon/res/components/Style_sheet.dart';

class Notification_screen extends StatelessWidget {
  const Notification_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          foregroundColor: AppColors.white,
          title: Text(
            "Notifications",
            style: FontStyle().fs_20_Bold().copyWith(color: AppColors.white),
          ),
          elevation: 0,
          backgroundColor: AppColors.Dark_green),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Common_switch_tile(
                  title: "Conversation tones",
                  boolvalue: true,
                  subtitle: "Play sounds for incoming and outgoing messages."),
              Gap(15),
              Divider(
                thickness: 2,
              ),
              Text("Messages"),
              Common_listtile(
                  title: "Notification tone",
                  subtitle: "Default (WaterDrop_preview.ogg)",
                  onPressed: () {}),
              Common_listtile(
                  title: "Vibrate", subtitle: "Default", onPressed: () {}),
              Common_listtile(
                  title: "Popup notification",
                  subtitle: "Not available",
                  onPressed: () {}),
              Common_listtile(
                  title: "Light", subtitle: "Green", onPressed: () {}),
              Common_switch_tile(
                  title: "Use high priority notifications",
                  boolvalue: false,
                  subtitle: "Show previews of notifications at the top of"),
              Gap(15),
              Divider(
                thickness: 2,
              ),
              Text("Groups"),
              Common_listtile(
                  title: "Vibrate",
                  subtitle: "Default (WaterDrop_preview.ogg)",
                  onPressed: () {}),
              Common_listtile(
                  title: "Vibrate", subtitle: "Default", onPressed: () {}),
              Common_listtile(
                  title: "Light", subtitle: "Not available", onPressed: () {}),
              Common_switch_tile(
                  title: "Use high priority notifications",
                  boolvalue: true,
                  subtitle:
                      "Show previews of notifications at the top of the screen"),
            ],
          ),
        ),
      )),
    );
  }
}
