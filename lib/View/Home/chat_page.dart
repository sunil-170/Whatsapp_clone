import 'package:flutter/material.dart';
import 'package:whatsappsaloon/View/Account/Chat_screen.dart';
import 'package:whatsappsaloon/View/Home/Chat_screen.dart';
import 'package:whatsappsaloon/View/PopUp_button/Linked_devices.dart';
import 'package:whatsappsaloon/View/PopUp_button/Payment.dart';
import 'package:whatsappsaloon/View/PopUp_button/Settings.dart';
import 'package:whatsappsaloon/View/PopUp_button/Starred_message.dart';
import 'package:whatsappsaloon/res/components/App_colors.dart';

class Chat_page extends StatelessWidget {
  Chat_page({super.key});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
            title: Text("WhatsApp"),
            actions: [
              IconButton(onPressed: () {}, icon: Icon(Icons.search)),
              PopupMenuButton(
                  itemBuilder: (BuildContext context) => [
                        PopupMenuItem(child: Text("New group")),
                        PopupMenuItem(child: Text("New broadcast")),
                        PopupMenuItem(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) =>
                                      Linked_Device_screen()));
                            },
                            child: Text("Linked devices")),
                        PopupMenuItem(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => Starred_screen()));
                            },
                            child: Text("Starred messages")),
                        PopupMenuItem(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => Payment_screen()));
                            },
                            child: Text("Payments")),
                        PopupMenuItem(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => Setting_screen()));
                            },
                            child: Text("Settings")),
                      ])
            ],
            bottom: TabBar(indicatorColor: AppColors.white, tabs: [
              Tab(
                icon: Icon(Icons.camera_alt),
              ),
              Tab(
                text: "CHATS",
              ),
              Tab(
                text: "STATUS",
              ),
              Tab(
                text: "CALLS",
              ),
            ]),
            backgroundColor: AppColors.Dark_green,
            automaticallyImplyLeading: false),
        body: TabBarView(children: [
          Text("k hal h"),
          Chat_main_screen(),
          Text("Calls"),
          Text("Calls"),
        ]),
      ),
    );
  }
}
