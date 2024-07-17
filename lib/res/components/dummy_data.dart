// import 'package:salon_app/Models/All_models..dart';

import 'package:flutter/material.dart';

class Fix_data {
  static List<Map<String, dynamic>> Setting_data = [
    {
      "icon": Icons.key_rounded,
      "title": "Account",
      "subtitle": "Privacy, security, change number"
    },
    {
      "icon": Icons.chat,
      "title": "Chats",
      "subtitle": "Theme, wallpapers, chat history"
    },
    {
      "icon": Icons.notifications,
      "title": "Notifications",
      "subtitle": "Message, group & call tones"
    },
    {
      "icon": Icons.flip_camera_android,
      "title": "Storage and data",
      "subtitle": "Network usage, auto-download"
    },
    {
      "icon": Icons.help,
      "title": "Help",
      "subtitle": "Help centre, contact us, privacy policy"
    },
    {
      "icon": Icons.people,
      "title": "Invite a friend",
      "subtitle": "invite a friend on whatsapp"
    },
  ];
  static List<Map<String, dynamic>> Account_data = [
    {
      "icon": Icons.lock_outline,
      "title": "Privacy",
    },
    {
      "icon": Icons.security_rounded,
      "title": "Security",
    },
    {
      "icon": Icons.more_rounded,
      "title": "Two-step verification",
    },
    {
      "icon": Icons.system_security_update_good,
      "title": "Change number",
    },
    {
      "icon": Icons.sd_storage_rounded,
      "title": "Request account info",
    },
    {
      "icon": Icons.delete,
      "title": "Delete my account",
    },
  ];
  static List<String> dialog_data = ["System default", "Light", "Dark"];
}
