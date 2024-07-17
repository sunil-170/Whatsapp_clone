import 'package:flutter/material.dart';
import 'package:whatsappsaloon/res/components/App_colors.dart';

class Common_Dialog extends StatefulWidget {
  String initial_value;
  String newvalue, title;
  Common_Dialog({
    super.key,
    required this.initial_value,
    required this.newvalue,
    required this.title,
  });

  @override
  State<Common_Dialog> createState() => _Common_DialogState();
}

class _Common_DialogState extends State<Common_Dialog> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      actions: [
        Column(
          children: [
            ListTile(
              leading: Radio(
                  activeColor: AppColors.orange,
                  value: widget.newvalue,
                  groupValue: widget.initial_value,
                  onChanged: (value) => setState(() {
                        widget.initial_value = value.toString();
                      })),
              title: Text(widget.title),
            )
          ],
        )
      ],
      title: Text("Choose theme"),
    );
  }
}


/**
 * Firebase Core
 * Firebase Auth
 * Firebase Firestore
 * Firebase Database
 * Firebase Analytics
 * Firebase Storage
 * Firebase Messaging
 */
