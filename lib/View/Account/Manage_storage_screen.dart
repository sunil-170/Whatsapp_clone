import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:whatsappsaloon/res/components/App_colors.dart';
import 'package:whatsappsaloon/res/components/Style_sheet.dart';

class Manage_storage_screen extends StatefulWidget {
  const Manage_storage_screen({super.key});

  @override
  State<Manage_storage_screen> createState() => _Manage_storage_screenState();
}

class _Manage_storage_screenState extends State<Manage_storage_screen>
    with TickerProviderStateMixin {
  late AnimationController controller;
  @override
  void initState() {
    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 2))
          ..addListener(() {
            setState(() {});
          });
    controller.repeat(reverse: false);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          foregroundColor: AppColors.white,
          title: Text(
            "Manage storage",
            style: FontStyle().fs_20_Bold().copyWith(color: AppColors.white),
          ),
          elevation: 0,
          backgroundColor: AppColors.Dark_green),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Gap(10),
            LinearProgressIndicator(
              backgroundColor: AppColors.grey,
              borderRadius: BorderRadius.circular(20),
              minHeight: 10,
              value: controller.value,
              color: AppColors.yellow,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text("Whatsapp Media"), Text("Apps and others items")],
            ),
            Gap(20),
            Divider(
              thickness: 3,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Chats"),
                IconButton(onPressed: () {}, icon: Icon(Icons.search))
              ],
            ),
          ],
        ),
      )),
    );
  }
}
