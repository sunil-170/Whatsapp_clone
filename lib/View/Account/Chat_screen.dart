import 'package:flutter/material.dart';
import 'package:whatsappsaloon/res/components/App_colors.dart';
import 'package:whatsappsaloon/res/components/Common_textfield.dart';
import 'package:whatsappsaloon/res/components/Style_sheet.dart';

class Chat_screen extends StatelessWidget {
  Chat_screen({super.key});
  var initial_value = "System Default";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          foregroundColor: AppColors.white,
          title: Text(
            "Chats",
            style: FontStyle().fs_20_Bold().copyWith(color: AppColors.white),
          ),
          elevation: 0,
          backgroundColor: AppColors.Dark_green),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Display"),
            Common_listtile(
                onPressed: () {},
                icon: Icon(Icons.brightness_medium_sharp),
                title: "Theme",
                subtitle: "Light"),
            Common_listtile(
                onPressed: () {},
                icon: Icon(Icons.wallpaper),
                title: "Wallpaper"),
            Divider(
              thickness: 2,
            ),
            Text("Chat settings"),
            Common_switch_tile(
                title: "Enter is send",
                boolvalue: true,
                subtitle: "Enter key will send your message"),
            Common_switch_tile(
                title: "Media visibility",
                boolvalue: true,
                subtitle:
                    "Show newly downloaded media in your phone’s gallery"),
            Common_listtile(
                onPressed: () {}, title: "Font size", subtitle: "Medium"),
            Divider(
              thickness: 2,
            ),
            Common_listtile(
                onPressed: () {},
                icon: Icon(Icons.language),
                title: "App language",
                subtitle: "Phone's language (English)"),
            Common_listtile(
              onPressed: () {},
              icon: Icon(Icons.cloud_upload),
              title: "Chat backup",
            ),
            Common_listtile(
              onPressed: () {},
              icon: Icon(Icons.replay_circle_filled_rounded),
              title: "Chat history",
            ),
          ],
        ),
      ),
    );
  }
}
