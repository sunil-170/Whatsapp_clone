import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:whatsappsaloon/res/components/App_Function/App_function.dart';
import 'package:whatsappsaloon/res/components/App_colors.dart';
import 'package:whatsappsaloon/res/components/Style_sheet.dart';
import 'package:whatsappsaloon/res/components/dummy_data.dart';
import 'package:whatsappsaloon/res/components/utils/Routes/Route_names.dart';

class Setting_screen extends StatelessWidget {
  const Setting_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          foregroundColor: AppColors.white,
          title: Text(
            "Settings",
            style: FontStyle().fs_20_Bold().copyWith(color: AppColors.white),
          ),
          elevation: 0,
          backgroundColor: AppColors.Dark_green),
      body: SafeArea(
          child: Column(
        children: [
          ListTile(
            onTap: () {
              Navigator.of(context).pushNamed(RoutesName.Profile_screen);
            },
            leading: CircleAvatar(
                maxRadius: 25,
                child: Image.asset(
                  "assets/images/user_img.png",
                ),
                backgroundColor: AppColors.grey),
            title: Text("Ramphal"),
            subtitle: Text("Hey there i'm using Whatsapp"),
            trailing: Image.asset("assets/images/bar_code_img.png"),
          ),
          Gap(10),
          Divider(
            thickness: 2,
          ),
          ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: Fix_data.Setting_data.length,
              itemBuilder: (context, index) {
                return ListTile(
                    onTap: () {
                      App_Function().Route_function(index, context);
                    },
                    leading: Icon(Fix_data.Setting_data[index]["icon"]),
                    title: Text(Fix_data.Setting_data[index]["title"]),
                    subtitle: Text(Fix_data.Setting_data[index]["subtitle"]));
              }),
          Gap(70),
          Text("from"),
          Text("FACEBOOK"),
        ],
      )),
    );
  }
}
