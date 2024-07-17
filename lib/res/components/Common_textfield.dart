import 'package:flutter/material.dart';
import 'package:whatsappsaloon/res/components/App_colors.dart';

class Common_text_field extends StatelessWidget {
  String? text;
  IconData? icon, icon2;
  bool hide;
  Function(String?)? validator;
  TextEditingController? controller;
  Common_text_field(
      {super.key,
      this.icon,
      this.icon2,
      this.text,
      required this.hide,
      this.controller,
      this.validator});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: hide,
      decoration: InputDecoration(
          focusedBorder:
              OutlineInputBorder(borderSide: BorderSide(color: AppColors.grey)),
          prefixIcon: icon == null
              ? null
              : Icon(
                  icon,
                  color: AppColors.grey,
                ),
          suffixIcon: Icon(
            icon2,
            color: AppColors.grey,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          hintText: text),
      controller: controller,
      validator: validator == null ? null : (value) => validator!(value),
    );
  }
}

class Common_listtile extends StatefulWidget {
  String title;
  String? subtitle;
  Icon? icon, traling_object;
  Color? iconcolor;
  TextStyle? textstyle, textstyle1;
  Function onPressed;
  Common_listtile(
      {super.key,
      required this.title,
      this.subtitle,
      this.icon,
      this.iconcolor,
      this.textstyle,
      this.textstyle1,
      this.traling_object,
      required this.onPressed});

  @override
  State<Common_listtile> createState() => _Common_listtileState();
}

class _Common_listtileState extends State<Common_listtile> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        widget.onPressed();
      },
      leading: widget.icon,
      title: Text(widget.title, style: widget.textstyle),
      subtitle: widget.subtitle == null
          ? SizedBox()
          : Text(widget.subtitle!, style: widget.textstyle1),
      trailing: widget.traling_object,
    );
  }
}

class Common_switch_tile extends StatefulWidget {
  String title;
  String? subtitle;
  bool boolvalue;
  Common_switch_tile(
      {super.key, required this.title, required this.boolvalue, this.subtitle});

  @override
  State<Common_switch_tile> createState() => _Common_switch_tileState();
}

class _Common_switch_tileState extends State<Common_switch_tile> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(widget.title),
      subtitle: widget.subtitle == null
          ? SizedBox()
          : Text(widget.subtitle.toString()),
      trailing: 
      Switch(
          value: widget.boolvalue,
          activeColor: AppColors.Dark_green,
          inactiveThumbColor: AppColors.grey,
          onChanged: (newvalue) {
            setState(() {
              widget.boolvalue = !widget.boolvalue;
            });
          }),
    );
  }
}
